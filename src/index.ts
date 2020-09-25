import * as core from '@actions/core';

async function run(): Promise<void> {
  console.log('Hello from your GitHub action!');
  try {
    console.log('core.getInput(key)', core.getInput('key'));
    console.log('core.getInput(schema-var)', core.getInput('schema-variant'));

    core.setOutput('time', new Date().toTimeString());
  } catch (error) {
    core.setFailed(error.message);
  }
}

run();
