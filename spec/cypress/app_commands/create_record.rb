model = command_options['model']
attrs = command_options['attrs']

record = model.constantize.new(attrs)
record.save
record.errors.messages
