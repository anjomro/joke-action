# Joke Action

This is an example for a GitHub Action. It prints one nice joke to the log and outputs one that can be used later.

##### Try it out by yourself! The workflow is triggered when you star this repository and the joke is updated!

## Inputs

### `project_name`

**Required** The Project which the joke is for. Default `"you"`.

## Outputs

### `joke`

The Joke (multiline) from the action. Comes from https://github.com/wesbos/dad-jokes/blob/master/readme.md with help from https://pypi.org/project/dadjokes-cli/

## Example usage

- name: Use joke action
      uses: anjomro/joke-action@v3
      id: joke
      with:
        project_name: 'Joke Action'
    - name: Save another joke
      run: echo -e "Current Joke is as following... \n\n\n ${{ steps.joke.outputs.joke }}" > joke.txt