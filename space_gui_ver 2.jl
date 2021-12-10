using PyCall
tk = pyimport("tkinter")
mathin = pyimport("math")

piinc = mathin.pi

pydef mutable struct Guispace <: tk.Tk
    __init__(self) = begin
        tk.Tk.__init__(self)
    end
end