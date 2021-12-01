using PyCall
tk = pyimport("tkinter")
timemod = pyimport("time")
mathmod = pyimport("math")

ainc = 2*mathmod.pi/50
timeinc = 0.1

inpar = Dict("mass1" => 0, "mass2" => 0, "r" => 2)
time_delay = 0.01
m1startx = 150
m1starty = 150
r1 = 45
m2startx = 240
m2starty = 150
r2 = 24
Height = 600
Width = 600
aniheight = 300
aniwidth = 300

@pydef mutable struct Guiapp <: tk.Tk
    __init__(self) = begin
        tk.Tk.__init__(self)
        guiframe = tk.Frame(self, height = Height, width = Width)
        guiframe.pack(fill = "both", expand = true)
        canres = tk.Canvas(guiframe, background = "white", height = aniheight, width = aniwidth)
        canres.place(relx = 0.25, rely = 0.125)
        mainlab = tk.Label(guiframe, text = "Input Parameters")
        mainlab.place(relx = 0.43, rely = 0.65)

        m1 = tk.StringVar()
        m2 = tk.StringVar()
        dist = tk.StringVar()

        m1ent = tk.Entry(guiframe, text = m1)
        m2ent = tk.Entry(guiframe, text = m2)
        distent = tk.Entry(guiframe, text = dist)

        m1ent.place(relx = 0.3, rely = 0.7)
        m2ent.place(relx = 0.45, rely = 0.7)
        distent.place(relx = 0.6, rely = 0.7)

        c1 = canres.create_oval(m1startx - r1, m1starty - r1, m1startx + r1, m1starty + r1, fill = "blue")
        c2 = canres.create_oval(m2startx - r2, m2starty - r2, m2startx + r2, m2starty + r2, fill = "red")

        function anidraw()
            canres.move(c2, 10, 0)
        end

        mainbutton = tk.Button(guiframe, text = "Run", command = anidraw)
        mainbutton.place(relx = 0.48, rely = 0.75)
    end
end

app = Guiapp()
app.mainloop()