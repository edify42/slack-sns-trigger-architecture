# slack sns trigger architecture

Sample app which can fire off a `/slash_command` to slack and listen for a
`trigger_id` from slack which we can use in a backend.

## motivations

Sometimes you can't respond to slack within 3 seconds of a `/slash_command`
being invoked. This is a backend hack to create a new `/slash_request` which
listens on either an SQS queue or SNS topic for the `trigger_id`.

It should be the very last thing to be done by your backend app as it's only
valid for 3 seconds!

## WIP

This idea is very much untested and I'm wasting time here writing docs about
it.
