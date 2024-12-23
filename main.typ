#import "@preview/dvdtyp:1.0.0": *
#import "@preview/physica:0.9.3": *

#show: dvdtyp.with(
  title: "Homework #2",
  subtitle: [Quantum devices and interfaces],
  author: [Noa Aarts and Aron Koppe],
)

#let up = $arrow.t$
#let down = $arrow.b$

#outline()

= Initialization of single electron spins

#stack(dir: ltr, spacing: 2mm, image("blackboard.png", height: 30%), image("fermi.png", height: 20%))

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
	What do you do with your room temperature equipment to lower the energy of these
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
it you can see whether the qubit contains an electron since the current decreases if an electron is present.

#pagebreak()
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

These rabi-oscillations will make the qubit precess around the Y-axis with a larmor frequency $omega_L$.
To calculate this frequency we use the gyromagnetic ratio of the electron in the dot $gamma_e approx 1.760 times 10^11 "rad"/(s T)$.
Since we have a field of 10 microTesla $omega_L = 1.760 times 10^5 "rad"/s$. 
To get to the 81% superposition we need to rotate the qubit $theta = cos^(-1)(sqrt(0.81)) approx 0.451 "rad"$.
Therefore the time we need to drive the qubit is $theta / omega_L = 0.451 / (1.760 times 10^5) = 2.56 mu$s $approx 2.6 mu$s.

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

#pagebreak()
= Magnetic field strength and current

#problem[
	In class we learned we can drive our qubit from ground state to excited state and
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

#pagebreak()
= QPCs

#problem[
	Sketch and label the basic working principle of a Quantum Point Contact (QPC).
]

#figure(
	image("4/qpc.jpg"),
	caption: [current in a 1 quantum dot problem, with varying gate voltages.],
)

#problem[
	Capacitance matrices were either defined or created for dots and gates. Explain, in
	your own words, the role of capacitance matrices in defining the QPC-dot interaction.
]

We have the dot-dot matrix and the dot-gate matrix. In the dot-dot matrix, the ith row
and jth column element corresponds to the capacitance between the ith quantum dot and the
jth quantum dot. In the dot-gate matrix, the ith row and jth column corresponds to the
capacitance between the ith gate and the jth column. That capacitance is important for
getting the voltages and how likely charge will be stuck in-between the dots and gates.
As you notice from my given definition, the dots have a capacitance with themselves,
which means charge can get stuck in there as well. We need these matrices and voltages
to know the charge.

#problem[
	Modify the gate voltage for the dot in your simulation code and observe how the
	QPC's response (current) changes. What conclusions can you draw from this observation?
]

#figure(
	image("4/Current_events.png"),
	caption: [current in a 1 quantum dot problem, with varying gate voltages.],
)

It is only a select amount of voltages that allow current. There are discrete steps for
both voltages they need to be in to allow current to happen.

#problem[
	Illustrate and explain the process of single-shot electron spin readout using a QPC
]

#figure(
	image("4/spin_up.jpg"),
	caption: [current in a 1 quantum dot problem, with varying gate voltages.],
)

By adjusting voltages, you adjust the Fermi energy such that the tunneling happens with
just the spin-up particle staying on the right side (quantum dot). This way, you make sure
that one spin-up particle is the only particle you can measure, as the other particles require
a higher energy and tunnel out.

#problem[
	Based on your experience, outline three advantages and three disadvantages of using
	QDSim to simulate Quantum Dot devices.
]

Disadvantages:

1. Perfect circumstances are assumed where reality begs to differ. Imperfections need to be
added manually and it is complex to do so.
2. Theory behind what is simulated needs to be known beforehand. It is hard to get an explanation
of what everything means (I tried to search for it many times).
3. The color plots I get are very pixellated, likely due to limited resolution over which voltage
can vary. What if I want more variation? It is hard editing in those nuances.

Advantages:

1. Instead of performing an experiment with zero expectations, there is at least a simulation to test
your theory beforehand.
2. Interactions you were not expecting at first are now visualized and shown in outputs like the
capacitance matrices.
3. You can simulate circumstances that do not yet exist in hardware, making you able to see whether such
a piece of hardware would work in real life.

#pagebreak()
= Workgroup papers

#problem[
	Summarize the difference between a Yanson point contact and a QPC as described in
	the paper "Quantum point-contact sensors: State of the art and prospects."
]

A QPC is an artificial hole an electron can fill in after which current measuring measure if an electron
fills the hole. Yanson point contact has a narrow gap where an electron can be and can bridge between two
sides.

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

The figures literally show the total conductance of a QPC in figures a and b, with the top figure being total
conductance and the figures below standing for conductance for spin-up and spin-down qubits. This is plotted
against the voltage applied, with every different colored line standing for a different magnetic field strength.
The grey lines in the top figure show low-energy scale as voltage increases with the two different values of
interaction. Inside the middle figure of a,b, there is another figure where the amount of shots is plotted against
conductance. The different colored lines are again different magnetic field strengths. All plots of figures a,b assume
~T = 0. In figures c and d I see the top figure having a different minimum energy than figures a and b and figure d
plots some lines against another type of energy.

Bottom line of figures a and b is that the biggest magnetic strength does not guarantee the best conductance, nor does
it help with number of shots succeeding. c and d test some properties in other slightly different situations.

#problem[
	Provide a brief description of atomic force microscopy (AFM). Would the fabrication
	method in "Fabrication of quantum point contacts by engraving GaAs/AlGaAs heterostructures
	with a diamond tip" work for an InAs-based or Si/SiGe heterostructure platform? Justify your
	answer.
]

The removal of materials with a tip works in a way such that a force is applied on the material. It depends on the material
the tip is used on whether the force applied makes the result precise or whether the space that is removed is too wide.
The experiment needs to be repeated on the heterostructures this question gives as examples to know whether it would
actually work.

#problem[
	The paper "Statistical evaluation of 571 GaAs quantum point contact transistors
	showing the 0.7 anomaly in quantized conductance using cryogenic on-chip multiplexing" reports
	QPCs formed with GaAs heterostructures. Would it be worthwhile to replicate this experiment
	on an InAs-based or Si/SiGe heterostructure platform? Why or why not?
]

It would be worthwile to test it with other materials, since the Van Hove model has material-dependent properties
you could test for the other materials as well. Confirms the case that Van Hove model is causing the 0.7
anomaly a bit better.
