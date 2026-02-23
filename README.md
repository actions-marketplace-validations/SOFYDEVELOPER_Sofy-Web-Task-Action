## Sofy-Web-Task-Run

This repository contains a GitHub Action that allows you to execute a Sofy Web Prompt directly from your GitHub workflow.

You can trigger a Sofy web task by providing your Project ID and Subscription Key, along with either a Prompt or an existing Prompt ID.

## Required Inputs

1️-Subscription Key

You must provide your Sofy subscription key.

You can find it by:

Logging into Sofy

Navigating to Settings

Opening the Integration section (Authentication dropdown)

2-Project ID

The unique identifier of your Sofy project.

You can find this inside your Sofy dashboard under your project details.

## Optional Inputs

You must provide either:

prompt → A new prompt text to execute
OR

prompt_id → An existing prompt ID already created in Sofy

 
NOTE: At least one of them must be provided.

## Usage

Add the following step in your workflow.

Make sure to include the checkout action before using the Sofy action.

- name: 'checkout'
  uses: 'actions/checkout@v2'

- name: 'Run Sofy Web Prompt'
  uses: 'SOFYDEVELOPER/sofy-web-task-run@main'
  with:
    project_id: 'your_project_id'
    subscription_key: 'your_subscription_key'
    prompt: 'Open sofy.ai and go to login page'
 Using Prompt ID Instead of Prompt Text

If you already have a saved prompt inside Sofy:

- name: 'Run Sofy Web Prompt'
  uses: 'SOFYDEVELOPER/sofy-web-task-run@main'
  with:
    project_id: 'your_project_id'
    subscription_key: 'your_subscription_key'
    prompt_id: 'existing_prompt_id'

## Sample Workflow
name: Sofy Web Task

on:
  push:

jobs:
  run-sofy-task:
    runs-on: ubuntu-latest

    steps:
      - name: Checkout Repository
        uses: actions/checkout@v2

      - name: Execute Sofy Web Prompt
        uses: SOFYDEVELOPER/sofy-web-task-run@main
        with:
          project_id: '69773c4d1749de90bd7b6bb4'
          subscription_key: 'YOUR_SUBSCRIPTION_KEY'
          prompt: 'Open sofy.ai. Go to login page'

## How It Works

This action:

Accepts your inputs from the workflow

Executes index.sh

Sends a POST request to Sofy’s public web agent API

Runs the provided prompt against your Sofy project

## Requirements

Ubuntu runner (runs-on: ubuntu-latest)

Valid Sofy project_id

Valid subscription_key

Either prompt or prompt_id
