---
layout: post
title:  "Tris et complexité algorithmique 1"
date:   2017-11-24 19:26:00 +0100
tags: informatique
feature-img: "assets/img/pexels/computer.jpeg"
thumbnail: "assets/img/pexels/computer.jpeg"
---

Bonjour à tous et toutes !

Aujourd'hui, nous allons faire un peu d'informatique théorique.

# Les algorithmes de tri

Le but d'un algorithme de tri est de...trier. Jusque là, rien de choquant.

En général, les tris sont effectués sur des tableaux ou des listes.

Pour avoir une représentation "physique", essayez les algorithmes avec des cartes à jouer.


Commencons la présentation :

## Tri sélection

Sur un tableau de $$n$$ éléments (numérotés de $$0$$ à $$n-1$$), le principe du tri par sélection est le suivant :

* rechercher le plus petit élément du tableau, et l'échanger avec l'élément d'indice 0 ;
* rechercher le second plus petit élément du tableau, et l'échanger avec l'élément d'indice 1 ;
* continuer de cette façon jusqu'à ce que le tableau soit entièrement trié.

En Python, l'algorithme s'écrit ainsi :

{% highlight python %}
def tri_selection(t):
	# t : tableau de nombres
	n = len(t) # longueur du tableau
	for i in range(n):
		mini = i
		for j in range(i,n):
        	if t[j] < t[mini]:
				mini = j
        if mini is not i:
		t[i] = tmp
		t[i]=t[mini]
		t[mini]=tmp
	return t
{% endhighlight %}


## Tri insertion

L'objectif d'une étape est d'insérer le i-ème élément à sa place parmi ceux qui précèdent. Il faut pour cela trouver où l'élément doit être inséré en le comparant aux autres, puis décaler les éléments afin de pouvoir effectuer l'insertion. 

Dans la pratique, ces deux actions sont fréquemment effectuées en une fois, en faisant « remonter » l'élément au fur et à mesure jusqu'à rencontrer un élément plus petit.



## Tri à bulles

L'algorithme parcourt le tableau et compare les éléments consécutifs. Lorsque deux éléments consécutifs ne sont pas dans l'ordre, ils sont permutés

Après un premier parcours complet du tableau, le plus grand élément est forcément en fin de tableau, et il ne bougera plus. En effet, dès que le plus grand élément est rencontré durant le parcours, il est mal trié par rapport à tous les autres éléments suivants, donc échangé à chaque fois jusqu'à la fin du parcours : la bulle remonte.

Après le premier parcours, le plus grand élément ést à sa position définitive : plus la peine de s'en occuper. Le reste du tableau est en revanche encore désordonné. Il faut donc le parcourir à nouveau, en s'arrêtant à l'avant-dernier élément (puisque le dernier est bien placé). On fait remonter une autre bulle.

Après ce deuxième parcours, les deux plus grands éléments sont à leur place. On répetera donc les parcours du tableau, jusqu'à ce que les plus petits éléments soient placés à leur position définitive.

**Exercice** : Implémentez le tri à bulles et le tri insertion

# Complexité algorithmique

La complexité d'un algorithme est une mesure de la quantité de ressources (temps, espace mémoire, etc.) qu'a besoin un algorithme pour résoudre un problème dans le pire des cas possibles. 

La comparaison entre algorithmes est faite asymptotiquement, c'est à dire quand les entrées deviennent de taille infinie  (impossible en pratique bien sur)

On distingue la complexité temporelle (le nombre d'instructions) et la complexité spatiale (la quantité de mémoire utilisée)

## La notation $$\mathcal{O}$$

Il n'est pas nécessaire d'avoir un calcul très précis du nombre d'itérations, surtout en avec de grandes données. La notation $$\mathcal{O}$$ sert donc à modéliser cette propriété formellement.

Cette notation s'applique sur des fonctions. Soit $$f$$ et $$g$$ deux fonctions. "$$f$$ est un grand O de $$g$$ en l'infini" se traduit par :

$$f(n) = \mathcal{O}(g(n)) \Leftrightarrow \exists k>0, \exists n_0 \; \forall n>n_0 \; |f(n)| \leq |g(n)|\cdot k $$

Vu que le but de l'étude de la complexité est d'étudier le comportement asymptotique des algorithmes, comprendre quand les données deviennent grandes, cette définition est exactement celle que nous allons utiliser.

**Exemple** Montrons que $$f(x) = x^2+x+1 = \mathcal{O}(x^2) $$


Déjà, nous pouvons remarquer que :

$$|f(x)| = f(x), |g(x)|=g(x),  \forall x \in \mathbb{R}$$

Ensuite que $$2x^2 \geq f(x), \forall x \geq 1$$

En prenant alors $$n_0=1$$ et $$k=2$$ dans la définition, on a le résultat !

**Exercice** Montrez que $$f(x) \neq \mathcal{O}(n^3)$$, $$f$$ définie précédement.

## Un exemple

Prenons le tri sélection écrit précedementet calculons sa complexité temporelle.

Les affectations sont dites "à temps constant" : quelque soit la taille de l'entrée la sortie se fera en un temps fixé à l"avance. On dit que c'est une opération en $$\mathcal{O}(1)$$.

Ensuite la boucle la plus externe : $$n$$ itérations (range(n) commence à 0 et s'arrete à $$n-1$$ inclus).

A l'intérieur de cette boucle :

* une boucle : $$n-i$$ itérations en $$\mathcal{O}(1)$$ : explication ci-après.
* un test : le test de condition est un $$\mathcal{O}(1)$$ et le code en cas de vérification de la condition est aussi en $$\mathcal{O}(1)$$.

En conséquence, le tout est un $$\mathcal{O}(1)$$.

*Dans le cas où le code à l'intérieur du if n'était pas en $$\mathcal{O}(1)$$, il aurait fallu se placer dans le pire des cas, celui où la condition est toujours vérifiée*

Ici, on a donc $$(n-i)\mathcal{O}(1)$$ itérations pour le moment.

* un test : même réponse que précedement.

Ici, on a donc $$(n-i)\mathcal{O}(1)$$ itérations par tour de boucle.

Sachant que $$i$$ prend les valeurs de 0 à $$n-1$$, il suffit de sommer le nombre d'itérations.

$$\sum_{i=0}^{n-1}(n-i)\mathcal{O}(1)$$

On peut sortir le $$\mathcal{O}(1)$$, "c'est une constante".

$$\mathcal{O}(1)\sum_{i=0}^{n-1}(n-i)= \mathcal{O}(1)\sum_{i=1}^{n}(i)=\mathcal{O}(1)\frac{n(n+1)}{2}$$

Or $$\frac{n(n+1)}{2} = \mathcal{O}(n^2)$$ (**Vérifiez-le**)

On a donc un nombre d'itérations qui est $$\mathcal{O}(1)\mathcal{O}(n^2) = \mathcal{O}(n^2)$$

On dit que le tri sélection est un **tri en complexité quadratique**.

**Exercice** : Les tri insertion et à bulles sont **tri en complexité quadratique** dans le pire des cas. Montrez-le.

*Indication : les tableaux triés à l'envers sont des cas pathologiques pour les deux algorithmes.*

# Peut-on faire mieux ?

Oui. Il existe de tels algorithmes mais l'implémentation et le calcul de la complexité nécessite des outils supplementaires.

A une prohcaine fois alors !







