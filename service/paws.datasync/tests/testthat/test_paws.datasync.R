# This file is generated by make.paws. Please do not edit here.

test_that("list_agents", {
    expect_error(list_agents(), NA)
})

test_that("list_agents", {
    expect_error(list_agents(MaxResults = 20), NA)
})

test_that("list_locations", {
    expect_error(list_locations(), NA)
})

test_that("list_locations", {
    expect_error(list_locations(MaxResults = 20), NA)
})

test_that("list_task_executions", {
    expect_error(list_task_executions(), NA)
})

test_that("list_task_executions", {
    expect_error(list_task_executions(MaxResults = 20), NA)
})

test_that("list_tasks", {
    expect_error(list_tasks(), NA)
})

test_that("list_tasks", {
    expect_error(list_tasks(MaxResults = 20), NA)
})
