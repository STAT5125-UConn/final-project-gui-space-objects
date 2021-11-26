using PyCall
tk = pyimport("tkinter")
pyimport("time")

@pydef mutable struct GuiApp <: tk.Tk
    __init__(self) = begin
        tk.Tk.__init__(self)
        guiframe = tk.Frame(self)
        guiframe.pack(fill = "both", expand = true)
    end
end

app = GuiApp()
app.mainloop()