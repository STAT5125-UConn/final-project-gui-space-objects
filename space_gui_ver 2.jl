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
        mcan = tk.Canvas(self, background = "white", height = aniheight, width = aniwidth)
        mcan.pack(relx = 0.25, rely = 0.125)
        mlabel = tk.Label(self, text = "Input Parameters")
        mlabel.pack(relx = 0.43, rely = 0.62)

        m1 = tk.StringVar()
        m2 = tk.StringVar()
        dist = tk.StringVar()

        m1ent = tk.Entry(self, text = m1)
        m2ent = tk.Entry(self, text = m2)
        distent = tk.Entry(self, text = dist)
    end
end

app = Guispace()
app.mainloop()