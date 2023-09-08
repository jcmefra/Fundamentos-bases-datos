import networkx as nx
import matplotlib.pyplot as plt
from networkx.drawing.nx_agraph import graphviz_layout

# Crear un grafo dirigido
G = nx.DiGraph()

# Definir las entidades y atributos
entities_attributes = {
    "Personajes": ["Nombre", "Raza", "Género", "Habilidades", "Afiliaciones"],
    "Misiones": ["Nombre", "Descripción", "Ubicación", "Recompensas"],
    "Ubicaciones": ["Nombre", "Descripción", "Coordenadas"],
    "Objetos_Equipamiento": ["Nombre", "Tipo", "Descripción", "Valor"],
}

# Agregar nodos de entidades y atributos al grafo
for entity, attributes in entities_attributes.items():
    G.add_node(entity, shape="box", color="blue")
    for attribute in attributes:
        G.add_node(attribute, shape="ellipse", color="green")
        G.add_edge(entity, attribute)

# Dibujar el grafo
pos = graphviz_layout(G, prog="dot")
nx.draw(G, pos, with_labels=True, node_size=2000, node_color="lightgray", font_size=10, font_weight="bold")
plt.title("Diagrama ER de Juego RPG")
plt.show()
