using PyCall
tk = pyimport("tkinter")
mathin = pyimport("math")

piinc = mathin.pi
r1 = 45
r2 = 24
m1sx = 150
m1sy = 150
m2sx = 220
m2sy = 150

@pydef mutable struct Guispace <: tk.Tk
    __init__(self) = begin
        tk.Tk.__init__(self)
    end
end

app = Guispace()
app.mainloop()