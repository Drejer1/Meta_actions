from downward.experiment import FastDownwardExperiment
from lab.environments import SlurmEnvironment
from downward.reports.absolute import AbsoluteReport

import os
import os.path
import platform


class DEISSlurmEnvironment(SlurmEnvironment):
    """Environment for DEIS cluster."""

    DEFAULT_PARTITION = "naples"  # Alternatives are dhabi or rome
    DEFAULT_QOS = "normal"
    DEFAULT_MEMORY_PER_CPU = "9000M"
    MAX_TASKS = 2000 - 1  # see slurm.conf
    NICE_VALUE = 0

    DEFAULT_EXPORT = []


# List of domains to run your experiments on REPLACE
SUITE = ['depots-old', 'grid-old', 'miconic-old', 'satellite-old1', 'satellite-old2', 'zenotravel-old']

ENV = DEISSlurmEnvironment(partition="naples", email="")

# Use path to your Fast Downward repository.
REPO = '/nfs/home/student.aau.dk/sdja19/downward'
BENCHMARKS_DIR = '/nfs/home/student.aau.dk/sdja19/Meta_actions/Exam_project'
# If REVISION_CACHE is None, the default ./data/revision-cache is used.
REVISION_CACHE = None
REV = "main"

exp = FastDownwardExperiment(environment=ENV, revision_cache=REVISION_CACHE)

# Add built-in parsers to the experiment. These are the default for Fast Downward
exp.add_parser(exp.EXITCODE_PARSER)
exp.add_parser(exp.TRANSLATOR_PARSER)
exp.add_parser(exp.SINGLE_SEARCH_PARSER)
exp.add_parser(exp.PLANNER_PARSER)

exp.add_suite(BENCHMARKS_DIR, SUITE)


def change_format(run):
    nameD = run["domain"]
    splitlist = nameD.split("-", 3)
    domain = splitlist[0]
    config = splitlist[1]+ ":" +splitlist[3]
    run["algorithm"] = config
    run["domain"] = domain
    return run
def change_formatsum(run):
    nameD = run["domain"]
    splitlist = nameD.split("-", 3)
    domain = splitlist[0]
    config = splitlist[1]
    run["algorithm"] = config
    run["domain"] = domain
    return run

sas_driver_options1 = [
    "--overall-time-limit",
    "10m",
    "--overall-memory-limit",
    "8G",
    "--alias",
    "lama-first",
]
"""
sas_driver_options2 = [
    "--overall-time-limit",
    "10m",
    "--overall-memory-limit",
    "4G",
]"""

exp.add_algorithm(
    "FastDownward-lama-first",
    REPO,
    REV,
    [],  # REPLACE configuration
    build_options=["release", '-j1'],
    driver_options=sas_driver_options1,
)

"""
exp.add_algorithm(
    "FastDownward-lazy_greedy",
    REPO,
    REV,
    ["--evaluator", "hff=ff()", "--search", "lazy_greedy([hff], preferred=[hff])"],  # REPLACE configuration
    build_options=["release", '-j1'],
    driver_options=sas_driver_options2,
)
"""
# Add step that writes experiment files to disk.
exp.add_step("build", exp.build)

# Add step that executes all runs.
exp.add_step("start", exp.start_runs)

# Add parse step
exp.add_step("parse", exp.parse)

exp.add_fetcher(name="fetch")

# Look at parsers and/or properties files to see what other attributes are there
exp.add_report(AbsoluteReport(
    attributes=['coverage', 'expansions', 'search_time', 'total_time', 'planner_time', 'translator_operators',
                'translator_time_done', ], filter=change_format),
               outfile="reportindi.html")
exp.add_report(AbsoluteReport(
    attributes=['coverage', 'expansions', 'search_time', 'total_time', 'planner_time', 'translator_operators',
                'translator_time_done', ], filter=change_formatsum),
               outfile="reportsum.html")
# For Scatter plots look at https://lab.readthedocs.io/en/latest/downward.reports.html#downward.reports.scatter.ScatterPlotReport

# Parse the commandline and show or run experiment steps.
exp.run_steps()
