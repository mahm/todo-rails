user = User.create!(email: 'user@example.com', password: 'password')
[
  'バナナを買いに行く',
  'アンパンを買いに行く',
  '靴磨きをする',
  '風呂掃除をする',
  'コーヒーを淹れる'
].each do |name|
  user.tasks.create!(name: name)
end
