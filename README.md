# Queued

A simple but effective file based task queue written in bash.

## Install

 - `curl -0 https://raw.githubusercontent.com/snormore/queued/master/install.sh | sh`

## Usage

The `queued` command takes a `queue-file` and a `command` as arguments, the `queue-file` is just the path to a newline separated file containing the queue items, to be passed as arguments to the <command> when executed.

 - `queued <queue-file> <command>`
 - `queued ~/QUEUE run_task.py`

## Example

 - `printf "one\ntwo\nthree\nfour\nfive" > QUEUE && queued QUEUE echo`

## Related

 - See http://github.com/snormore/queued-cookbook for a chef cookbook that turns this into a runit service.

## TODO

 - If a job fails, take it out of the QUEUE and place it in QUEUE.failed, continue running next jobs in the QUEUE
 - After a job finishes successfully, add it to the QUEUE.done
