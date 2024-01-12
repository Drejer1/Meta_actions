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
SUITE = ["gripper_original", "gripper_all_actions", "gripper_working_set1", "gripper_working_set2", "barman_original",
         "barman_all_actions", "barman_working_set1", "barman_working_set2", "rovers_original", "rovers_all_actions",
         "rovers_working_set1", "logistics_original", "logistics_all_actions", "logistics_working_set1", ]

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

sas_driver_options1 = [
    "--overall-time-limit",
    "5m",
    "--overall-memory-limit",
    "4G",
    "--alias",
    "lama-first",
]

sas_driver_options2 = [
    "--overall-time-limit",
    "5m",
    "--overall-memory-limit",
    "4G",
    "--evaluator",
]
exp.add_algorithm(
    "FastDownward-lama-first",
    REPO,
    REV,
    [],  # REPLACE configuration
    build_options=["release", '-j1'],
    driver_options=sas_driver_options1,
)
exp.add_algorithm(
    "FastDownward-lazy_greedy",
    REPO,
    REV,
    ["hff=ff()", "--search", "lazy_greedy([hff], preferred=[hff])"],  # REPLACE configuration
    build_options=["release", '-j1'],
    driver_options=sas_driver_options2,
)

# Add step that writes experiment files to disk.
exp.add_step("build", exp.build)

# Add step that executes all runs.
exp.add_step("start", exp.start_runs)

# Add parse step
exp.add_step("parse", exp.parse)

exp.add_fetcher(name="fetch")

# Look at parsers and/or properties files to see what other attributes are there
exp.add_report(AbsoluteReport(attributes=['coverage', 'expansions', 'search_time', 'total_time', 'planner_time',]),
               outfile="report.html")

# For Scatter plots look at https://lab.readthedocs.io/en/latest/downward.reports.html#downward.reports.scatter.ScatterPlotReport

# Parse the commandline and show or run experiment steps.
exp.run_steps()
