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
        mcan.place(relx = 0.25, rely = 0.125)
        mlabel = tk.Label(self, text = "Input Parameters")
        mlabel.place(relx = 0.43, rely = 0.63)

        m1 = tk.StringVar()
        m2 = tk.StringVar()
        dist = tk.StringVar()

        m1ent = tk.Entry(self, text = m1)
        m2ent = tk.Entry(self, text = m2)
        distent = tk.Entry(self, text = dist)

        m1ent.place(relx = 0.1, rely = 0.7)
        m2ent.place(relx = 0.4, rely = 0.7)
        distent.place(relx = 0.7, rely = 0.7)

        m1lab = tk.Label(mframe, text = "Mass 1 (kg)")
        m2lab = tk.Label(mframe, text = "Mass 2 (kg)")
        distlab = tk.Label(mframe, text = "Distance (10^23 km)")

        m1lab.place(relx = 0.15, rely = 0.66)
        m2lab.place(relx = 0.45, rely = 0.66)
        distlab.place(relx = 0.71, rely = 0.66)

        o1 = mcan.create_oval(m1sx - r1, m1sy - r1, m1sx + r1, m1sy + r1, fill = "blue")
        o2 = mcan.create_oval(m2sx - r2, m2sy - r2, m2sx + r2, m2sy + r2, fill = "red")

        function anidraw()
            m1in = tryparse(Float64, m1ent.get())
            m2in = tryparse(Float64, m2ent.get())
            distin = tryparse(Float64, distent.get())
        end
    end
end

app = Guispace()
app.mainloop()