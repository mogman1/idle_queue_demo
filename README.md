# README

Simple Rails app to replicate https://github.com/mperham/sidekiq/issues/5031

To replicate issue, start sidekiq (`bundle exec sidekiq -C config/sidekiq.yml`) and in a rails console, kick off a bunch
of jobs, e.g. `100.times{QueueOneWorker.perform_async; QueueTwoWorker.perform_async; QueueDefaultWorker.perform_async;}`.

I'm able to fairly consistently get one or two queues to go "idle", though I have observed times where all queues start
and appear to remain active.  You may have to restart sidekiq and run the experiment a couple of times before you'll see
jobs getting backed up in a queue.  Which queue(s) will back up seems to be random.
