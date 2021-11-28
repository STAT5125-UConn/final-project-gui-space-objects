using PyCall
tk = pyimport("tkinter")
pyimport("time")

inpar = Dict("mass1" => 0, "mass2" => 0, "distance" => 1)
time_refresh = 0.01
heightwin = 600
widthwin = 600
animwinheight = 200
animwinwidth = 200

@pydef mutable struct GuiApp <: tk.Tk
    __init__(self) = begin
        tk.Tk.__init__(self)
        guiframe = tk.Frame(self)
        guiframe.pack(fill = "both", expand = true)
    end
end

app = GuiApp()
app.geometry("600x600")
app.mainloop()