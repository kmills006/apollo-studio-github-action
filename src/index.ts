import core from '@actions/core';

async function run(): Promise<void> {
  console.log('Hello from your GitHub action!');
  try {
    const key = core.getInput('key');
    const schemaVariant = core.getInput('schema-variant');

    console.log('key', key);
    console.log('schemaVariant', schemaVariant);

    core.setOutput('time', new Date().toTimeString());
  } catch (error) {
    core.setFailed(error.message);
  }
}

run();
