function myplot(x,y)

global panH
plot(x,y)
set(,'KeyPressFcn',@KeyAction)
panH = pan(gcf);
