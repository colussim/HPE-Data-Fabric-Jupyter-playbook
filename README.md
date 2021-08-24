### Using HPE MapR Data Fabric Storage Container


<h3><img src="/graphics/textbubble.png?raw=true" style="max-width:100%;"> About This Lab</h3>

<p>Welcome to this Lab on HPE CSI Driver for Kubernetes with MapR Data Fabric Storage and SQL Server 2019 Lab.</p>
<p>Kubernetes  allows you to create and manage containers. From a perspective of SQL Server, kubernetes provides:</p>
<uL>
    <li>A scalable architecture to deploy containerized applications and data platforms such as SQL Server</li>
   <li> Persistent storage for stateful containers like SQL Server</li>
    <li>Built-in load balancers to abstract application connections to SQL Server</li>
    <li>Built-in high availability for stateful containers like SQL Server</li>
    <li>An ecosystem for Operators to simplify application deployment and manage high availability</li>
</ul>   
<p>MapR Data fabric or kubernetes benefits : </p>
<uL>
    <li>Persist data for containerized applications</li>
   <li>Scale data and performance as containers grow</li>
    <li>Benefit from MapR tickets, for end-to-end security</li>
    <li>Multi-tenant deployment and access</li>
</ul>   

<p>The purpose of this demo is to show you how to use the MapR storage function for SQL Server in a kubernet environment.</p>

<img src="/graphics/info.png?raw=true" style="max-width:100%;"> <b>Note:</b> The Kubernete cluster and MapR Data Fabric cluster and CSI driver are already deployed<br>


<h3><img src="/graphics/checkmark.png?raw=true" style="max-width:100%;"> Learning Objectives</h3>

<p>When you complete this live demo, you will be able to:</p>
<ul>
<li>Understand Container Storage Interface (CSI) Driver for Kubernetes</li>
<li>Know how to install the HPE CSI driver MapR for kubernetes</li>
<li>Understand Kubernetes deployment</li>
<li>Understand Dynamic Provisionning , Persitent Storage on Kubernetes</li>    
<li>Understand the basics of deploying SQL Server on an Kubernetes cluster</li>    
<li>Connect and run queries against SQL Server deployed on Kubernetes</li>        
</ul>

<h3><img src="/graphics/building1.png?raw=true" style="max-width:100%;"> Business Applications of this Lab</h3>

<ul>
    <li>Developers looking to deploy a database container for their applications on Kubernetes.</li>
    <li>Database Administrators looking to understand how to deploy database platforms like SQL Server in a Kubernetes cluster using Kubernetes.</li>
</ul>   

<h3><img src="/graphics/Cogs.png?raw=true" style="max-width:100%;"> Infrastructure description</h3>
You'll need a local systems or Virtual Machines that you are able to install software on.
<p>The infrastructure of the platform is composed of:</p>
<ul>
     <li>1 Master node : arvine </li>
    <li> 3 Worker nodes : gamaret, garonoir, syrah</li>
    <li>1 MapR Data Fabric cluster 6.2 with 3 nodes , the same nodes for kubernetes cluster</li>
</ul>
<ul>
    <li>Microsoft SQL Server 2019 container</li>
    <li>RedHat Enterprise server 8.2</li>
    <li>Kubernetes 1.19.6 or release higher</li>
</ul>
<ul>
    <li>1 Node with JupyterLab-JupyterHub and BASH kernel</li>
    <li>active ssh connection between your JupyterLab-JupiterHub host and one of the Kubernetes cluster nodes (for example with the master node)</li>
</ul>
<img src="/graphics/infra1.png?raw=true" style="max-width:100%;">

<img src="/graphics/infra4.png?raw=true" style="max-width:100%;">

<h3><img src="/graphics/education1.png?raw=true" style="max-width:100%;"> Lab Details</h3>

<p>This Lab uses Kubernetes,Docker , SQL Server 2019 , Azure Data Studio, SQL Command Line Tools, and the Kubernetes CLI (kubectl).</p>
<table class="table" style="font-size: 14px;">
  <tbody>
      <tr>
        <td style="width:20%;"><b>Primary Audience:</b></td><td>Administrators looking to learn how to manage Storage with CSI drivers on Kubernetes and Administrators looking to learn how to deploy, use, and manage SQL Server on kubernetes</td>
    </tr>
    <tr>
        <td style="width:20%;"><b>Secondary Audience:</b></td><td>Architects, Developers and IT Pros</td>
    </tr>
      <tr>
          <td style="width:20%;"><b>Type:</b></td><td>Interactif Demonstration</td>
      </tr>  
      <tr>
        <td style="width:20%;"><b>Length: </b></td><td>1 hours</td>
    </tr>
 </tbody>
</table>    

<h3><img src="/graphics/bookpencil.png?raw=true" style="max-width:100%;"> Lab Modules</h3>
<table class="table" style="font-size: 14px;">
  <tbody>
    <tr>
        <td style="width:40%;"><b>Module</b> </td> <td><b>Topics</b></td>
    </tr>
    <tr>
       <td><b>01-Deploying to Kubernetes</b></td><td>Introduction on Container Storage Interface (CSI) Driver for Kubernetes and learn install the HPE CSI driver for MapR</td>
    </tr>
    <tr>
        <td><b>02-Create A Storage Class</b></td><td>Learn to create a Storage Class which will be used to provision persistent volumes</td>
    </tr>
      <tr>
          <td><b>03-Create A Persistent Volume Claim (PVC)</b></td><td>Learn to create a Persistent Volume Claim</td>
      </tr>  
      <tr>
        <td><b>04-Deploying SQL Server workload</b></td><td>Learn to deploy SQL Server on Kubernetes Cluster.</td>
    </tr>
       <tr>
          <td><b>05-Kubernetes Deployments 2</b></td><td>Restore SQL Server Database,Learn the basics of connecting and running queries to a SQL Server container on Kubernetes</td>
      </tr>
       <tr>
          <td><b>06-Kubernetes Deployments 3</b></td><td>Learn Use the persisted data with SQL Server</td>
      </tr>
       <tr>
          <td><b>07-Kubernetes Deployments 4</b></td><td>Learn to create Clone Persistent Volume Claim (PVC) and use with SQL Server</td>
      </tr>
       <tr>
          <td><b>08-Kubernetes Deployments 5</b></td><td>Learn to create volumes Snapshot Persistent Volume Claim (PVC) and use with SQL Server</td>
      </tr>
      <tr>
          <td><b>09-Kubernetes Deployments 6</b></td><td>Learn to create a Volume expansion and use with SQL Server</td>
      </tr>

 </tbody>
</table>   
<h3><img src="/graphics/point1.png?raw=true" style="max-width:100%;"> Terminology</h3>

Throughout this demonstration we take for example the connection with the user stundent4 but all the configurations apply to any user.

<h3><img src="/graphics/listcheck.png?raw=true" style="max-width:100%;"> Setup</h3>

Clone the repository :

```

$ git clone https://github.com/colussim/HPE-Data-Fabric-Jupyter-playbook.git
$ cd HPE-Data-Fabric-Jupyter-playbook
$

```

<ul>
<li>Copy the <b><i>student4-datafabric-csi-jupyter</i></b> directory into your JuperterLab environment or into the directory of your JuperterHub user.</li>
<li>Create the same user used in your JupyterLab-JupyterHub environment on your master node of your kubernetes cluster.</li>
<li>Generate a ras ssh key for this user.</li>
<li>Update the authorized_keys file with the public keys (in master node)</li>
<li>To make kubectl work for your non-root user, run these commands, which are also part of the result of the kubeadm init command:
    
```
    
mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config
    
```

</li>
<li>Copy the <b><i>sql-mapr</i></b> directory contained in the <b><i>tudent4-datafabric-csi-server</i></b> directory of the repository into the home directory of your create user on your master node</li>
</ul>

<h3><img src="/graphics/pencil2.png?raw=true" style="max-width:100%;"> Usage</h3>

Load the Notebook  : ***HPEMAPR-SQL-Intro.ipynb***

<img src="/graphics/notebook.png?raw=true" style="max-width:100%;">


<h3><img src="/graphics/bookpencil.png?raw=true" style="max-width:100%;"> Conclusion</h3>

<p>As you can see, it is quite easy to set up and use HPE MapR CSI Driver .</p>
<p>This version include all the latest capabilities in the CSI specification :</p>
<ul>
    <li>Dynamic Provisionning : Parameter Overloading</li>
    <li>Volume Snapshots</li>
    <li>Data Sources :
   Cloning - Volume Snapshot and Restore
    </li>
    <li>Volume Expansion</li>
</ul>
<p>Do not hesitate to contact me for more information</p>

<h3><img src="/graphics/owl.png?raw=true" style="max-width:100%;"> Resources</h3>

[HPE MapR CSI Driver for Kubernetes on GitHub](https://github.com/mapr/mapr-csi)

[HPE MapR CSI documentation](https://docs.datafabric.hpe.com/62/CSIdriver/csi_using_and_troubleshooting.html)

# Thank You !<img src="/graphics/grommet1.png?raw=true" style="max-width:50%;float:right;">


