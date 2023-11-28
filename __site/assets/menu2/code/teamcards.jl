# This file was generated, do not modify it. # hide
#hideall
team = [
  (name="Martin Mikkelsen", pic="beth", title="AI DevOps Engineer", vitae="", email="example@example.com"),
  ]

"@@cards @@row" |> println
for person in team
  """
  @@column
    \\card{$(person.name)}{$(person.pic)}{$(person.title)}{$(person.vitae)}{$(person.email)}
  @@
  """ |> println
end
println("@@ @@") # end of cards + row