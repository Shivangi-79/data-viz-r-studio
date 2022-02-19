ggplot(data = diamonds) + geom_bar(mapping = aes(x=cut))

# to add color to edges :

ggplot(data = diamonds) + geom_bar(mapping = aes(x=cut, color=cut))

# to add more color :

ggplot(data = diamonds) + geom_bar(mapping = aes(x=cut, fill=cut))

#to show as stacked bar chart:

ggplot(data = diamonds) + geom_bar(mapping = aes(x=cut, fill=clarity))


# to use Facet_wrap & facet_grid functions

ggplot(data = penguins) + geom_point(mapping = aes(x=flipper_length_mm, y=body_mass_g, color=species)) +
  facet_wrap(~species)

# for diamond dataset using geom_bar and facet_wrap functions

ggplot(data = diamonds) + geom_bar(mapping = aes(x=color, fill=cut)) + 
  facet_wrap(~cut)

# now to use facet_grid functions

ggplot(data = penguins) + geom_point(mapping = aes(x=flipper_length_mm, y=body_mass_g, color=species)) +
  facet_grid(sex~species)
# now only one variable with facet_grid function

ggplot(data = penguins) + geom_point(mapping = aes(x=flipper_length_mm, y=body_mass_g, color=species)) +
  facet_grid(~species)

ggplot(data = penguins) + geom_point(mapping = aes(x=flipper_length_mm, y=body_mass_g, color=species)) +
  facet_grid(~sex)




