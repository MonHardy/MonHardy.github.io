class Project {
  final String? title, description;

  Project({this.title, this.description});
}

List<Project> demo_projects = [
  Project(
    title: "Introduction to Cyber Security",
    description:
        "Estudo realizado utilizando a plataforma do TryHackMe para entender o que é segurança ofensiva e defensiva, além de aprender sobre carreiras na área de Segurança da Informação.",
  ),
  Project(
    title: "Network Fundamentals",
    description:
        "Estudo realizado para entender os conceitos de como os computadores se comunicam entre si e os tipos de fraquezas da rede.",
  ),
  Project(
    title: "How the web works",
    description:
        "Entender as funções subjacentes da World Wide Web e o que a faz funcionar.",
  ),
  Project(
    title: "Cyber Defense",
    description:
        "Gerenciamento de Ameaças e Vulnerabilidades, Operações e Monitoramento de Segurança, Emulação de Ameaças, Resposta a Incidentes e Perícia, Análise de Malware e Engenharia Reversa.",
  ),
  Project(
    title: "Linux Fundamentals",
    description:
        "Estudo sobre o Sistema Operacional mais usado para Segurança da Informação.",
  ),
  Project(
    title: "Windows Fundamentals",
    description:
        "Estudo sobre o Windows, seus controles de segurança e conceitos básicos para identificar, explorar e defender o Windows.",
  ),
];
