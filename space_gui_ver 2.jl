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

heightf = 600
widthf = 600
aniheight = 300
aniwidth = 300

@pydef mutable struct Guispace <: tk.Tk
    __init__(self) = begin
        tk.Tk.__init__(self)
        mframe = tk.Frame(self, height = heightf, width = widthf)
        mframe.pack(fill = "both", expand = true)
    end
end

app = Guispace()
app.mainloop()