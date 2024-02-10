# TerrakubeRoxs by RoxsRoss
![JavaScript](https://img.shields.io/badge/-JavaScript-F7DF1E?style=for-the-badge&logo=JavaScript&logoColor=black)
![Node.js](https://img.shields.io/badge/-Node.js-339933?style=for-the-badge&logo=node.js&logoColor=white)
![HTML5](https://img.shields.io/badge/-HTML5-E34F26?style=for-the-badge&logo=html5&logoColor=white)
![Terraform](https://img.shields.io/badge/terraform-7B42BC?logo=terraform&logoColor=white&style=for-the-badge)
![VSCode](https://img.shields.io/badge/Visual_Studio_Code-0078D4?style=for-the-badge&logo=visual%20studio%20code&logoColor=white)
![kubernetes](https://img.shields.io/badge/kubernetes-326CE5?logo=kubernetes&logoColor=white&style=for-the-badge)
![Azure](https://img.shields.io/badge/azure-0078D4?logo=microsoft-azure&logoColor=white&style=for-the-badge)
![Amazon](https://img.shields.io/badge/Amazon_AWS-232F3E?style=for-the-badge&logo=amazon-aws&logoColor=white)
![Gcp](https://img.shields.io/badge/Google_Cloud-4285F4?style=for-the-badge&logo=google-cloud&logoColor=white)
![Docker](https://img.shields.io/badge/docker-2496ED?logo=docker&logoColor=white&style=for-the-badge)
![python](https://img.shields.io/badge/python-3776AB?logo=python&logoColor=white&style=for-the-badge)
![golang](https://img.shields.io/badge/Go-00ADD8?style=for-the-badge&logo=go&logoColor=white)
![github Actions](https://img.shields.io/badge/GitHub_Actions-2088FF?style=for-the-badge&logo=github-actions&logoColor=white)
![Gitlab](https://img.shields.io/badge/GitLab-330F63?style=for-the-badge&logo=gitlab&logoColor=white)
![Jenkins](	https://img.shields.io/badge/Jenkins-D24939?style=for-the-badge&logo=Jenkins&logoColor=white)
![city](https://img.shields.io/badge/TeamCity-000000?style=for-the-badge&logo=TeamCity&logoColor=white)

---
![](https://github.com/roxsross/roxsross/blob/main/images/roxsross-banner-1.png)

🔥🔥🔥🔥

### by RoxsRoss
---
# Terrakuberoxs

**Terraform:**

Terraform es una herramienta de infraestructura como código (IaC) que permite a los desarrolladores y operadores gestionar la infraestructura de manera eficiente y declarativa. Desarrollado por HashiCorp, Terraform permite definir la infraestructura deseada en un archivo de configuración, generalmente escrito en lenguaje HCL (HashiCorp Configuration Language). A través de la ejecución de comandos, Terraform crea, modifica y destruye recursos de manera automatizada, manteniendo un estado consistente y controlado de la infraestructura.

**Características clave:**
- Declarativo: Define la infraestructura deseada y Terraform se encarga de llevarla a ese estado.
- Multiplataforma: Compatible con diversos proveedores de servicios en la nube y tecnologías on-premise.
- Control de versiones: Permite la gestión del código de infraestructura mediante sistemas de control de versiones como Git.
- Planificación y aplicació: Terraform realiza una planificación antes de aplicar cambios, proporcionando una vista previa de las acciones que se llevarán a cabo.

**Minikube:**

Minikube es una herramienta que facilita la creación y gestión de clústeres de Kubernetes locales para el desarrollo y prueba de aplicaciones. Desarrollado para simplificar el proceso de desarrollo en entornos Kubernetes, Minikube permite a los desarrolladores ejecutar clústeres de Kubernetes en una máquina individual, lo que facilita la iteración y prueba de aplicaciones sin necesidad de un clúster completo.

**Características clave:**
- Desarrollo local: Permite a los desarrolladores trabajar con clústeres de Kubernetes en sus máquinas locales.
- Fácil instalación: Minikube se instala de manera sencilla y es compatible con diversas plataformas.
- Integración con proveedores de hipervisores: Puede utilizar diferentes proveedores, como Docker, VirtualBox, Hyper-V o KVM.
- Soporte para addons: Permite la adición de complementos para ampliar las capacidades del clúster local.

## Terraform y Minikube Onfire

Ahora se viene onfire con el provider de Minikube

¡Un proveedor de Terraform diseñado específicamente para Minikube!

El objetivo de este proyecto es permitir a los desarrolladores crear clústeres de Minikube e integrarlos con proveedores de Terraform comunes para Kubernetes, como hashicorp/kubernetes y hashicorp/helm, 

¡todo desde la comodidad de Minikube! Con esta herramienta, buscamos simplificar y mejorar la experiencia de desarrollo y despliegue de aplicaciones en entornos Kubernetes locales. 

¡Explora nuevas posibilidades y optimiza tu flujo de trabajo con el proveedor Minikube para Terraform!

Documentación [enlace](https://registry.terraform.io/providers/scott-the-programmer/minikube/latest/docs)

Repositorio [enlace](https://github.com/scott-the-programmer/terraform-provider-minikube)


### ¿Como funciona?

Solo debes incorporar el provider minikube y kubernetes

```hcl
terraform {
  required_version = "~> 1.7.0"

  required_providers {
    minikube = {
      source  = "scott-the-programmer/minikube"
      version = "~> 0.3.10"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 2.25.2"
    }
  }
}
```

Tambien puedes sumar kubectl, helm y muchos más y hacer magia

y no solo eso, se puede agregar nodos, addons y driver como CNI = cillium

Te recomiendo conectar el backend algun provider asi guardas los state


*Recuerda usar el ciclo de vida de terraform*

```markdown
1. **Inicialización:**
   ```bash
   terraform init
   ```
2. **Planificación:**
   ```bash
   terraform plan
   ```
3. **Aplicación:**
   ```bash
   terraform apply
   ```
4. **Validación:**
   ```bash
   terraform validate
   ```
5. **Destrucción:**
   ```bash
   terraform destroy
   ```
```
y podras usar el gestor preferido como k9s o lens para jugar con minikube

```
output
Changes to Outputs:
  + cluster_context_client_certificate     = (sensitive value)
  + cluster_context_client_key             = (sensitive value)
  + cluster_context_cluster_ca_certificate = (sensitive value)
  + cluster_context_hostname               = (known after apply)
  + cluster_name                           = "terrakuberoxs"
```
## Pasos

```
cd terraform
terraform init
```
![](./assets/1.png)

```
terraform plan
```
![](./assets/2.png)

```
terraform apply
```
![](./assets/4.png)

Desde K9s

![](./assets/5.png)

Desde Lens

![](./assets/6.png)

Nodos que pudes agregar los que necesites, al final son contenedores

![](./assets/7.png)
![](./assets/3.png)


🔥🔥🔥🔥

<img width="80%" src="https://roxsross-linktree.s3.amazonaws.com/295-full-website-banner-transparent-white.png"> 


### ✉️  &nbsp;Contactos 

Me puedes encontrar en:

[![site](https://img.shields.io/badge/Hashnode-2962FF?style=for-the-badge&logo=hashnode&logoColor=white&link=https://blog.295devops.com) ](https://blog.295devops.com)
[![Blog](https://img.shields.io/badge/dev.to-0A0A0A?style=for-the-badge&logo=devdotto&logoColor=white&link=https://dev.to/roxsross)](https://dev.to/roxsross)
![Twitter](https://img.shields.io/twitter/follow/roxsross?style=for-the-badge)
[![Linkedin Badge](https://img.shields.io/badge/-LinkedIn-blue?style=for-the-badge&logo=Linkedin&logoColor=white&link=https://www.linkedin.com/in/roxsross/)](https://www.linkedin.com/in/roxsross/)
[![Instagram Badge](https://img.shields.io/badge/-Instagram-purple?style=for-the-badge&logo=instagram&logoColor=white&link=https://www.instagram.com/roxsross)](https://www.instagram.com/roxsross/)
[![Youtube Badge](https://img.shields.io/badge/YouTube-FF0000?style=for-the-badge&logo=youtube&logoColor=white&link=https://www.youtube.com/channel/UCa-FcaB75ZtqWd1YCWW6INQ)](https://www.youtube.com/channel/UCa-FcaB75ZtqWd1YCWW6INQ)


<samp>
"Para entender algo no debes entenderlo sino serlo"
<samp>
  </div>
  
   [![Comprar](https://img.shields.io/badge/Buy_Me_A_Coffee-FFDD00?style=for-the-badge&logo=buy-me-a-coffee&logoColor=black&link=https://www.buymeacoffee.com/roxsross)](https://www.buymeacoffee.com/roxsross)
