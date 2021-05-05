json.total @solutions
json.totalNotFiltered @solutions

json.rows @solutions do |solution|
  json.id solution.id
  json.user solution.user.email
  json.test_id solution.test_id
  json.link "#{ solution.link.present? ? link_to('git', solution.link) : '-' }"
  json.file "#{ solution.answer.present? ? link_to('Файл', url_for(solution.answer)) : '-' }"
  json.kind solution.kind
  json.date I18n.l(solution.created_at, format: :short)
  json.status "#{ solution.link.blank? && solution.answer.blank? ? 'у процессі' : 'вирішено' }"
end
