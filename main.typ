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
#figure(image("1a/final.png", height: 20%)) <above-fermi>
We lower the levels of the dot to a point where the lower state is below the fermi level and the upper state above
the fermi level.
#figure(image("1a/final.png", height: 20%)) <around-fermi>
An electron can now only tunnel into the lower energy state.

#problem[
	What is the difference between these two states?
]

the potential in the quantum dot is the only difference in these situations.

#problem[
	hat do you do with your room temperature equipment to lower the energy of these
	two states?
]

To lower the energy of the states using the room temperature equipment, you need to lower the potential in the dot,
I.E. make it less negative. To achieve this the voltage of the plunger should be increased. While the tunneling gates
need to be lowered slightly so the tunneling rate stays constant.

#problem[
	List a benefit and downside to initialization of single electron spins using relaxation
	to ground state.
]

A benefit of initialising a single electron spin using relaxation is that you don't need to be as accurate
with the potential in the quantum dot. A drawback is that you need to wait for a (possibly very) 
long time until the dot has relaxed to the ground state for certain.

#problem[
	What needs to be added to the device in order to measure whether there is spin
	selective tunneling? What is actually measured?
]

To measure spin-selective tunneling a Quantum Point Contact can be added, if you measure the current through
it you can see whether the qubit contains an electron since the current increases if an electron is present.

= Single gate operation

#problem[
	We need to make an oscillating field. What needs to be added to the device that is
	sketched on the chalkboard (Q1) to achieve this?
]

To create an oscillating field we can add a wire next to the quantum dot.
#figure(
	image("2a.png"),
	caption: [quantum dot gate layout],
) <qdot>
The green line in the image indicates the wire we add to create the field.

#problem[
	We make an oscillating field of 10 microTesla. For how long would we need to have
	this pulse switched on, in order to generate the $81 percent$ superposition, described above?
]

#problem[
	While you apply the oscillating field you don't want to risk that the electron tunnels
	out of the Quantum dot when it (partially) reaches the excited state. With the same cartoons
	as in Q1 (a), describe which two things you can do to prevent this.
]

The two ways to prevent the electron from tunneling out of the quantum dot are:
Lowering the energy of the electron a lot and increasing the barrier height.
#stack(
	dir: ltr,
	spacing: 2mm,
	figure(
		image("2c/lower.png", width: 50%),
		caption: [lowering the states]
	),
	figure(
		image("2c/thick.png", width: 50%),
		caption: [increasing the barrier]
	),
)

#problem[
	For the read-out using a QPC, sketch what other thing needs to be added to the
	device that was sketched on the chalk board?
]

For read-out using a QPC the quantum point contact needs to be added, we can see it in @qdot.
On the right side, the part with the blue fill and black border needed to be modified to have the
small channel on the right side. This makes it a QPC.

#problem[
	Use the cartoons to describe how you would read out the final qubit state. What do
	you expect for the current in the QPC?
]

To read out the final qubit state we need to move the states back around the fermi level like in @around-fermi.
We then start reading the current through the QPC, if we notice it drops the qubit was in the exited state 
and tunneled back to the reservoir. If the electron does not leave the quantum dot, and therefore the measured
current does not change, the qubit was in state $ket(0)$.

= Magnetic field strength and current

#problem[
	In class we learned, we can drive our qubit from ground state to excited state and
	back by applying an oscillating magnetic field. At what frequency should the magnetic field
	oscillate?
]

The frequency that the magnetic field should oscillate at depends on the quantizing magnetic field $B$.
This field will determine the larmor-frequency $omega_L$ of the quantum dot. The driving field should
oscillate as close as possible to $omega_L$.

#problem[
	Our driving wire is at a distance of r = 500 nanometers from our quantum dot.
	What is the current we need to apply a magnetic field with a strength of 1 Tesla, 1m Tesla and
	$1mu$ Tesla?
]

Assuming the driving wire is much longer than 500 nanometers, 
$B = (mu_0 I)/(2 pi R)$, where $R = 500"nm" = 5 dot 10^-7$m.
This means that $B = I / 0.004$. to get the current necessary for 1 tesla, $1 = I/0.004 -> I = 4"mA"$.
for 1 milliTesla $I = 4mu$A and for 1 microTesla $I = 4"nA"$

#problem[
	this current is running through a 50 Ohm wire (a value that people like to avoid
	reflections), how much heat will this dissipate into our system?
]

When a field strength of 1 Tesla is desired,
the dissipated heat from a current through the resistance is $P = I^2 R = 4"mA"^2 dot 50 = 8"mW"$.
When the field is 1 milliTesla, the dissipated power will be $P = 8 dot 10^(-10)$W and
for 1 microTesla $P = 8 dot 10^(-16)$W.

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

#figure(
	image("5b/paperfig.png", width: 60%),
	caption: [Figure 5.B from "Graphene quantum point contact transistor for DNA sensing."]
)

This figure describes the potential from a dna strand going through a nanostrip of graphene. 
The eight pictures (A,B,C,D,E,D',C',B') are each of the DNA strand being fed slightly further through the nanostrip.
For each position of the DNA strand they simulated what the potential at each point would be.
The strip would be in the zone where there aren't any visible color differences, but like a QPC,
the different positions of the charges make it possible to measure differences in resistance
and therefore the "axis" of the DNA.

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
