---
title: High Powered Rocketry Certification Rocket
date: 2020-09-20
tags: [Rocketry]
thumbnail_color: "#1c1c1c"
summary: Sucessful NAR L2 certification with fiberglass airframe, printed fins, and dual deploy parachutes.
status: complete
---

## Overview
The National Association of Rocketry (NAR) has developed a certification process divided into 3 levels. Depending on your level of certification, greater impulse solid fuel motors become available to purchase and launch commercially. In order for AerospaceNU to continue working at its current scale it is essential that someone on the team be certified up to at least the L2 level, enabling the use of up to L class motors. 

To attain a L2 cert, the individual must first complete the L1 process of entirely self designing, building, and launching a rocket successfully on an I, J, or K class motor. They must then take a written exam to demonstrate their knowledge of regulations and laws pertaining to high power rocketry. Finally they must successfully fly and recover a self built rocket on a L, M or N class motor. 

## Approach
To save both time and money I decided to design a rocket capable of flying safely on both the maximum allowed L1 motor and the minimum required L2 motor without any changes to the body. I started this process by creating a cross sectional model of the rocket to get a rough idea of layout, an approximation of the rocket's center of gravity and center of pressure, and necessary thrust loading.

<figure>
    <img src="/media/Website Media/OR L1.PNG" alt="L1 Open Rocket" style="width:100%">
    <figcaption>Fig 1. Initial OpenRocket 2D simulation of the rocket airframe including dummy masses and placeholder fins.</figcaption>
</figure>

The airframe was designed with an extra long upper parachute bay to accommodate potentially implementing a payload. At the time of this design I was also preparing to teach an introduction to rocketry course, which would incorporate payloads, so I intended to design this rocket as a test bed for the payload deployment interface that would be used in that course.

Following this blueprint I purchased materials and began assembly of the known finalized sections including the parachute bays and electronics bay. The electronics bay was composed of two parallel wooden sleds secured by SLS printed Nylon 12 bulkheads that incorporated slits for the sleds to be inserted into and cylindrical protrusions to fill with black powder for separation charges. These sleds served as the mounting surface for the altimeters, barometers, and accelerometers used to control flight event timing. The bulkheads were clamped around a section of fiberglass coupler using threaded rods that ran the length of the electronics bay.

<figure>
    <img src="/media/Website Media/E-bay.jpg" alt="E-bay held in hand" style="width:100%">
    <figcaption>Fig 2. Rocket electronics bay fully assembled showing the grey bulkheads sandwiching the green fiberglass coupler and the wooden standoff bulkhead used to shorten the upper parachute bay</figcaption>
</figure>

Since my certification flight would not be incorporating a payload I had to shorten the upper bay temporarily in order for it to be pressurized enough to separate at parachute deployment. To do this I floated a wooden bulkhead on the protruding threaded rods as shown in the picture above.
Once the rocket was assembled for all components but the fins I found the actual mass and CG of the rocket and updated my 2D sim to account for this. This allowed me to decide on a final fin shape that produced a stable CAL off the rail.

<figure>
    <img src="/media/Website Media/OR L1L2 1.PNG" alt="Open rocket simulation free body diagram" style="width:100%">
    <figcaption>Fig 3. Final OpenRocket 2D simulation of the rocket airframe incorporating final fin shape.</figcaption>
</figure>
This final fin design was then SLS printed out of Nylon 12 and the removable fin motor section was assembled. The fins were designed to be removable to accommodate large changes to the rocket's CG due to the variance of its future payloads. Fin design flexibility allows for the center of pressure of the rocket to remain easily modifiable, enabling a greater range of potential payloads.


<div class="image-container">
    <div class="image-wrapper">
        <img src="/media/Website Media/IMG_3904.jpg" alt="Fin can assembly stage 1">
    </div>
    <div class="image-wraper">
        <img src="/media/Website Media/IMG_3906.jpg" alt="Fin can assembly stage 2">
    </div>
    <div class="image-wrapper">
        <img src="/media/Website Media/IMG_3907.jpg" alt="Fin can assembly stage 3">
    </div>
</div>
    
<div class="caption">
        <p>Fig 4. Fin can assembly showing a single fin slotted in its centering ring (left) and the completed assembly of all 3 fins sandwiched between two centering rings (right).</p>
</div>

The retention system of this removable fin assembly (shown above) involved the addition of tabs onto either end of the inner spine of the fins. These tabs would then be inserted into receiving cutouts on the two centering rings. These centering rings were laser cut out of 1/4" thick pine wood. The rings were compressed against the fin spines using the threaded rod that ran the length of the motor section. Nuts were attached on either end of the assembly and tightened down until adequate compression was achieved.

Once the rocket was in a final state of assembly I ran ejection tests on the ground to verify that my estimated charges could actually induce a separation. 

The first ejection test highlighted an issue with the rocket's construction. The upper bulkhead of the motor section was reinforced in preparation for the shock it would experience on parachute deployment. The threaded rods secured with nuts and epoxy fillet around the edge of the bulkhead both provided plenty of structural support for axial forces directed from the rocket tail to its tip. I failed to account for the axial force directed from rocket tip to its tail, created during chamber compression at separation. This resulted in the bulkhead being pushed down the tube of the rocket, along with its threaded rods, which could then no longer retain the motor. This failure, created while ejection testing, is shown below.

<div class="image-container">
    <div class="image-wrapper">
        <img src="/media/Website Media/IMG_3917.jpg" alt="Fin can retaining ring failure 1">
    </div>
    <div class="image-wraper">
        <img src="/media/Website Media/IMG_3915.jpg" alt="Fin can retaining ring failure 2">
    </div>
</div>
    
<div class="caption">
        <p>Fig 5. First ejection test failure</p>
</div>

In response to this, rather than relying on epoxy to fix the bulkhead to the airframe, a small section of coupler tube was attached just below the bulkhead to act as a hard-stop. The bulkhead was then clamped down against that hard-stop shelf using the threaded rods that run the length of the motor section.

This change was then once again validated through the successful ejection test shown below.

<div class="image-container">
    <div class="image-wrapper">
        <img src="/media/Website Media/DSC_0150.jpg" alt="Ejection test stage 1">
    </div>
    <div class="image-wraper">
        <img src="/media/Website Media/DSC_0152.jpg" alt="Ejection test stage 2">
    </div>
    <div class="image-wrapper">
        <img src="/media/Website Media/DSC_0153.jpg" alt="Ejection test stage 3">
    </div>
</div>
    
<div class="caption">
        <p>Fig 6. Frame by frame of the parachute ejection test for the lower parachute bay.</p>
</div>

Both L1 and L2 flights were successful for this rocket but had a few important takeaways for future designs. Although my rocket had a stable average CAL of 2.5 the CAL off the rail was around 1.6 and there was visually a bit of wobble in its takeoff. This was resolved during my L2 flight thanks to the greater acceleration of the rocket due to the larger motor. During the building process my rocket quickly accumulated more weight than I had originally projected which is part of what led to the low off the rail CAL for the L1 flight. I will have to more conscious of weight budget in future builds.

<video controls width="100%" preload="metadata">
  <source src="/media/Website Media/23 - Ryan L1.mp4" type="video/mp4">
</video>
