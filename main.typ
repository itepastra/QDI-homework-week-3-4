#import "@preview/dvdtyp:1.0.0": *
#import "@preview/physica:0.9.3": *

#show: dvdtyp.with(
  title: "Homework #2",
  subtitle: [Quantum devices and interfaces],
  author: [Noa Aarts and Aron Koppe],
)

#let up = $arrow.t$
#let down = $arrow.b$

= Initialization of single electron spins

#stack(dir: ltr, spacing: 2mm, image("blackboard.png", height: 30%), image("fermi.png", height: 20%)))

#problem[
	Consider the case of spin-selective tunneling, sketch the cartoons with how this process works, 
	starting from the situation where both states are above in terms of the Fermi level?
]

We start with the situation where both states are above the fermi level so that any electron leaves the dot.
#image("1a/start.png", height: 20%)
After this we lower the fermi energy in the quantum dot until both states are far below the fermi level,
this then causes an electron to enter the quantum dot.
#image("1a/lower.png", height: 20%)
Finally we increase the energy in the quantum dot to the point where the $ket(down)$ state is above the fermi level
and the down state is below the fermi level.
#image("1a/final.png", height: 20%)
This means that there will be tunneling only if the spin in the quantum dot is $ket(down)$, selective spin tunneling.

#problem[
	What is the difference between these two states?
]

#problem[
	hat do you do with your room temperature equipment to lower the energy of these
	two states?
]


#problem[
	List a benefit and downside to initialization of single electron spins using relaxation
	to ground state.
]

#problem[
	What needs to be added to the device in order to measure whether there is spin
	selective tunneling? What is actually measured?
]

= Single gate operation

#problem[
	We need to make an oscillating field. What needs to be added to the device that is
	sketched on the chalkboard (Q1) to achieve this?
]

#problem[
	We make an oscillating field of 10 microTesla. For how long would we need to have
	this pulse switched on, in order to generate the $81 percent$ superposition, described above?
]

#problem[
	While you apply the oscillating field you don't want to risk that the electron tunnels
	out of the Quantum dot when it (partially) reaches the excited state. With the same cartoons
	as in Q1 (a), describe which two things you can do to prevent this.
]

#problem[
	For the read-out using a QPC, sketch what other thing needs to be added to the
	device that was sketched on the chalk board?
]

#problem[
	Use the cartoons to describe how you would read out the final qubit state. What do
	you expect for the current in the QPC?
]

= Magnetic field strength and current

#problem[
	In class we learned, we can drive our qubit from ground state to excited state and
	back by applying an oscillating magnetic field. At what frequency should the magnetic field
	oscillate?
]

#problem[
	Our driving wire is at a distance of r = 500 nanometers from our quantum dot.
	What is the current we need to apply a magnetic field with a strength of 1 Tesla, 1m Tesla and
	$1mu$ Tesla?
]

#problem[
	this current is running through a 50 Ohm wire (a value that people like to avoid
	reflections), how much heat will this dissipate into our system?
]

= QPCs

#problem[
	Sketch and label the basic working principle of a Quantum Point Contact (QPC).
]

#problem[
	Capacitance matrices were either defined or created for dots and gates. Explain, in
	your own words, the role of capacitance matrices in defining the QPC-dot interaction.
]

#problem[
	Modify the gate voltage for the dot in your simulation code and observe how the
	QPC's response (current) changes. What conclusions can you draw from this observation?
]

#problem[
	Illustrate and explain the process of single-shot electron spin readout using a QPC
]

#problem[
	Based on your experience, outline three advantages and three disadvantages of using
	QDSim to simulate Quantum Dot devices.
]

= Workgroup papers

#problem[
	Summarize the difference between a Yanson point contact and a QPC as described in
	the paper "Quantum point-contact sensors: State of the art and prospects."
]

#problem[
	Interpret Figure 5.B from the paper "Graphene quantum point contact transistor for
	DNA sensing." Include a labeled coordinate system on the figure.
]

#problem[
	Explain Figures 2.a-d from the paper "Microscopic origin of the '0.7-anomaly' in
	quantum point contacts."
]

#problem[
	Provide a brief description of atomic force microscopy (AFM). Would the fabrication
	method in "Fabrication of quantum point contacts by engraving GaAs/AlGaAs heterostructures
	with a diamond tip" work for an InAs-based or Si/SiGe heterostructure platform? Justify your
	answer.
]

#problem[
	The paper "Statistical evaluation of 571 GaAs quantum point contact transistors
	showing the 0.7 anomaly in quantized conductance using cryogenic on-chip multiplexing" reports
	QPCs formed with GaAs heterostructures. Would it be worthwhile to replicate this experiment
	on an InAs-based or Si/SiGe heterostructure platform? Why or why not?
]
