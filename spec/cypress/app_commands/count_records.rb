model = command_options['model']
where = command_options['where']

if where
  model.constantize.where(where).count
else
  model.constantize.count
end
