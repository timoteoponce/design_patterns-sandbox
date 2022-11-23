vault = Vault.instance
timeline = Timeline.new(vault)

# run all processes in the N amount of cores
Scheduler.execute([
    { timeline.publish("timoteo", "my first message") },
    { timeline.publish("timoteo", "my second message") },
    { timeline.publish("timoteo", "my third message") },
    { timeline.publish("timoteo", "my fourth message") },
    { timeline.publish("timoteo", "my fifth message") },
    { timeline.publish("timoteo", "my first message") },
    { timeline.publish("timoteo", "my second message") },
    { timeline.publish("timoteo", "my third message") },
    { timeline.publish("timoteo", "my fourth message") },
    { timeline.publish("timoteo", "my fifth message") },
], 10)