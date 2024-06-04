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
SUITE = ['barman-ac-domain-components', 'barman-ac-domain-expansions', 'barman-ac-domain-generatedstates',
         'barman-ac-domain-makespan', 'barman-ac-domain-planlength', 'barman-ac-domain-searchtime',
         'barman-ac-domain-totaltime',
         'barman-random-domain-components', 'barman-random-domain-expansions',
         'barman-random-domain-planlength-generatedstates', 'barman-random-domain-searchtime-makespan',
         'barman-random-domain-totaltime',
         'depots-ac-domain-components', 'depots-ac-domain-expansions', 'depots-ac-domain-generatedstates',
         'depots-ac-domain-makespan', 'depots-ac-domain-planlength', 'depots-ac-domain-searchtime',
         'depots-ac-domain-totaltime',
         'depots-random-domain-components', 'depots-random-domain-expansions', 'depots-random-domain-generatedstates',
         'depots-random-domain-makespan', 'depots-random-domain-planlength',
         'depots-random-domain-totaltime-searchtime',
         'grid-ac-domain-components', 'grid-ac-domain-generatedstates', 'grid-ac-domain-planlength-expansions-makespan',
         'grid-ac-domain-searchtime', 'grid-ac-domain-totaltime',
         'grid-random-domain-components', 'grid-random-domain-generatedstates',
         'grid-random-domain-searchtime-planlength-expansions-makespan', 'grid-random-domain-totaltime',
         'gripper-ac-domain-generatedstates-makespan',
         'gripper-ac-domain-totaltime-searchtime-planlength-expansions-components',
         'gripper-random-domain-generatedstates',
         'gripper-random-domain-searchtime-planlength-expansions-makespan-components',
         'gripper-random-domain-totaltime',
         'logistics-ac-domain-expansions', 'logistics-ac-domain-generatedstates',
         'logistics-ac-domain-planlength-makespan-components', 'logistics-ac-domain-searchtime',
         'logistics-ac-domain-totaltime',
         'logistics-random-domain-expansions-generatedstates', 'logistics-random-domain-planlength-makespan-components',
         'logistics-random-domain-searchtime', 'logistics-random-domain-totaltime',
         'miconic-ac-domain-components', 'miconic-ac-domain-planlength-makespan',
         'miconic-ac-domain-searchtime-expansions-generatedstates', 'miconic-ac-domain-totaltime',
         'miconic-random-domain-components', 'miconic-random-domain-expansions-generatedstates',
         'miconic-random-domain-planlength-makespan', 'miconic-random-domain-totaltime-searchtime',
         'satellite-ac-domain-components', 'satellite-ac-domain-expansions', 'satellite-ac-domain-planlength-makespan',
         'satellite-ac-domain-searchtime', 'satellite-ac-domain-totaltime-generatedstates',
         'satellite-random-domain-components', 'satellite-random-domain-expansions',
         'satellite-random-domain-generatedstates', 'satellite-random-domain-planlength-makespan',
         'satellite-random-domain-totaltime-searchtime',
         'zenotravel-ac-domain-components', 'zenotravel-ac-domain-expansions', 'zenotravel-ac-domain-generatedstates',
         'zenotravel-ac-domain-makespan', 'zenotravel-ac-domain-planlength', 'zenotravel-ac-domain-searchtime',
         'zenotravel-ac-domain-totaltime',
         'zenotravel-random-domain-components', 'zenotravel-random-domain-expansions',
         'zenotravel-random-domain-generatedstates', 'zenotravel-random-domain-makespan',
         'zenotravel-random-domain-planlength', 'zenotravel-random-domain-searchtime',
         'zenotravel-random-domain-totaltime']

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
    domain = splitlist[0] + splitlist[1]
    config = splitlist[3]
    run["algorithm"] = config
    run["domain"] = domain
    return run


sas_driver_options1 = [
    "--overall-time-limit",
    "10m",
    "--overall-memory-limit",
    "4G",
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
               outfile="report.html")

# For Scatter plots look at https://lab.readthedocs.io/en/latest/downward.reports.html#downward.reports.scatter.ScatterPlotReport

# Parse the commandline and show or run experiment steps.
exp.run_steps()
