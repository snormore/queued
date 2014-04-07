# Queued

A simple but effective file based queue written in bash.

## Install

 - `curl -0 https://raw.githubusercontent.com/snormore/queued/master/install.sh | sh`

## Usage

The `queued` command takes a `queue-file` and a `command` as arguments, the `queue-file` is just the path to a newline separated file containing the queue items, to be passed as arguments to the <command> when executed.

 - `queued <queue-file> <command>`
 - `queued ~/QUEUE run_task.py`

## Example

 - Clone thid repo: `echo "hello world" > QUEUE && queued QUEUE echo`

## Related

 - See github.com/snormore/queued-cookbook for a chef cookbook that turns this into an runit service.

