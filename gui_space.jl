using PyCall
tk = pyimport("tkinter")
pyimport("time")

@pydef mutable struct GUIapp <: tk.Tk
    __init__(self) = begin
        tk.Tk.__init__(self)
        self.label = tk.Label(text = "Hello world!")
        self.label.pack()
    end
end

app = GUIapp()
app.mainloop()