model = command_options['model']
where = command_options['attrs']
new_attrs = command_options['new_attrs']

if where && new_attrs
  record = model.constantize.where(where).last
  record&.update(new_attrs)
end
