-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : mar. 21 juin 2022 à 21:41
-- Version du serveur :  10.2.43-MariaDB-log-cll-lve
-- Version de PHP : 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `linventi_ember`
--

-- --------------------------------------------------------

--
-- Structure de la table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(6) NOT NULL,
  `category` varchar(30) NOT NULL,
  `key` varchar(50) NOT NULL,
  `value` varchar(250) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `translations`
--

INSERT INTO `translations` (`id`, `locale`, `category`, `key`, `value`, `updated_at`) VALUES
(1, 'fr', 'navigation', 'home', 'Acceuil', '2022-06-19 23:01:02'),
(2, 'fr', 'navigation', 'store', 'Boutique', '2022-06-19 23:01:16'),
(3, 'fr', 'navigation', 'bans', 'Bans', '2022-06-19 23:01:21'),
(4, 'fr', 'users', 'users', 'Utulisateurs', '2022-06-19 23:01:28'),
(5, 'fr', 'users', 'search_btn', 'Rechercher', '2022-06-19 23:01:34'),
(6, 'fr', 'store', 'credits', 'Credits', '2022-06-19 23:02:01'),
(7, 'fr', 'store', 'package_listing_credits', 'Credits', '2022-06-19 23:16:02'),
(8, 'fr', 'store', 'package_listing_free', 'Gratuits', '2022-06-19 23:15:59'),
(9, 'fr', 'store', 'package_duration_days', 'Jours', '2022-06-19 23:02:09'),
(10, 'fr', 'store', 'package_duration_for', 'Pour', '2022-06-19 23:02:14'),
(11, 'fr', 'store', 'purchase', 'Acherter', '2022-06-19 23:16:38'),
(12, 'fr', 'store', 'package_listing_single_use', 'PErmane', '2022-06-19 23:02:22'),
(13, 'fr', 'store', 'cancel_purchase', 'Annuler', '2022-06-19 23:02:35'),
(14, 'fr', 'store', 'confirm_purchase_title', 'Confirmer l\'achat', '2022-06-19 23:25:45'),
(15, 'fr', 'footer', 'tos', 'Conditions d\'utilisation', '2022-06-19 23:03:03'),
(16, 'fr', 'footer', 'privacy_policy', 'Politique de Confidentialité', '2022-06-19 23:16:02'),
(17, 'fr', 'footer', 'impressum', 'Mentions Légales', '2022-06-19 23:16:04'),
(18, 'fr', 'users', 'user_list', 'Liste des Utilisateurs', '2022-06-19 23:04:51'),
(19, 'fr', 'users', 'name_input_placeholder', 'Pseudo', '2022-06-19 23:05:00'),
(20, 'fr', 'users', 'role_select_any', 'Tous', '2022-06-19 23:05:09'),
(21, 'fr', 'user_dropdown', 'sign_in', 'Se Connecter', '2022-06-19 23:05:19'),
(22, 'fr', 'user_dropdown', 'profile', 'Profil', '2022-06-19 23:05:25'),
(23, 'fr', 'user_dropdown', 'notifications', 'Notifications', '2022-06-19 23:05:32'),
(24, 'fr', 'user_dropdown', 'purchases', 'Achats', '2022-06-19 23:05:38'),
(25, 'fr', 'user_dropdown', 'sign_out', 'Se Déconnecter', '2022-06-19 23:05:47'),
(26, 'fr', 'authentication', 'sign_in_description', 'Connexion via', '2022-06-19 23:06:01'),
(27, 'fr', 'authentication', 'link_minecraft_tooltip', 'Entrez cette commande dans le chat du jeu pour lier votre compte Minecraft.', '2022-06-19 23:06:14'),
(28, 'fr', 'landing', 'join', 'Rejoindre', '2022-06-19 23:06:40'),
(29, 'fr', 'landing', 'offline', 'Déconnecter', '2022-06-19 23:06:48'),
(30, 'fr', 'landing', 'community_title', 'Communauté', '2022-06-19 23:06:56'),
(31, 'fr', 'landing', 'monthly_players', 'Joueurs Mensuels', '2022-06-19 23:07:01'),
(32, 'fr', 'landing', 'total_players', 'Joueurs Total', '2022-06-19 23:07:09'),
(33, 'fr', 'landing', 'registered_users', 'Utilisateurs Inscrits', '2022-06-19 23:07:15'),
(34, 'fr', 'landing', 'features_title', 'Caractéristiques', '2022-06-19 23:07:19'),
(35, 'fr', 'landing', 'servers_title', 'Nos Serveurs', '2022-06-19 23:07:25'),
(36, 'fr', 'landing', 'team_title', 'Équipe Communautaire', '2022-06-19 23:07:30'),
(37, 'fr', 'landing', 'discord_title', 'Rejoindre notre Discord', '2022-06-19 23:07:34'),
(38, 'fr', 'bans', 'ban', 'Ban', '2022-06-19 23:07:53'),
(39, 'fr', 'bans', 'unban', 'DeBan', '2022-06-19 23:08:00'),
(40, 'fr', 'bans', 'ban_length_placeholder', 'Durée', '2022-06-19 23:08:09'),
(41, 'fr', 'bans', 'ban_length_tooltip', 'Minutes (0 pour Permanent)', '2022-06-19 23:08:14'),
(42, 'fr', 'bans', 'ban_list', 'Ban liste', '2022-06-19 23:08:24'),
(43, 'fr', 'bans', 'date', 'Date', '2022-06-19 23:08:29'),
(44, 'fr', 'bans', 'scope', 'Portée', '2022-06-19 23:08:34'),
(45, 'fr', 'bans', 'server', 'Serveur', '2022-06-19 23:08:39'),
(46, 'fr', 'bans', 'offender', 'Joueur', '2022-06-19 23:08:44'),
(47, 'fr', 'bans', 'admin', 'Admin', '2022-06-19 23:08:52'),
(48, 'fr', 'bans', 'length', 'Durée', '2022-06-19 23:08:58'),
(49, 'fr', 'bans', 'reason', 'Raison', '2022-06-19 23:09:06'),
(50, 'fr', 'bans', 'reason_lowercase', 'Raison', '2022-06-19 23:09:09'),
(51, 'fr', 'bans', 'global', 'Global', '2022-06-19 23:09:38'),
(52, 'fr', 'bans', 'web', 'Site', '2022-06-19 23:09:46'),
(53, 'fr', 'bans', 'unknown', 'Inconnu', '2022-06-19 23:09:52'),
(54, 'fr', 'bans', 'permanent', 'Permanent', '2022-06-19 23:10:09'),
(55, 'fr', 'bans', 'no_bans_on_record', 'L\'utilisateur n\'a aucun bannissement enregistré', '2022-06-19 23:11:05'),
(56, 'fr', 'bans', 'no_records_found', 'Aucun utilisateur trouvé', '2022-06-19 23:11:10'),
(57, 'fr', 'bans', 'none', 'Rien', '2022-06-19 23:11:16'),
(58, 'fr', 'bans', 'banned_banner_messsage', 'Vous avez été banni.', '2022-06-19 23:11:23'),
(59, 'fr', 'bans', 'confirm_ban_title', 'Confirmer le bannissement', '2022-06-19 23:11:56'),
(60, 'fr', 'bans', 'confirm_ban_description', 'Voulez-vous vraiment bannir l\'utilisateur ?', '2022-06-19 23:12:08'),
(61, 'fr', 'bans', 'user_banned', 'Utilisateur Banni', '2022-06-19 23:12:13'),
(62, 'fr', 'bans', 'confirm_unban_title', 'Confirmer le débanissement', '2022-06-19 23:12:25'),
(63, 'fr', 'bans', 'confirm_unban_description', 'Voulez-vous vraiment débannir l\'utilisateur ?', '2022-06-19 23:12:47'),
(64, 'fr', 'bans', 'user_unbanned', 'Utilisateur Débanni', '2022-06-19 23:12:52'),
(65, 'fr', 'bans', 'confirm_remove_ban_title', 'Confirmer la Suppression', '2022-06-19 23:13:00'),
(66, 'fr', 'bans', 'confirm_remove_ban_description', 'Voulez-vous vraiment supprimer les logs de ce bannisement ?', '2022-06-19 23:13:09'),
(67, 'fr', 'bans', 'remove', 'Supprimer', '2022-06-19 23:13:14'),
(68, 'fr', 'bans', 'ban_record_removed', 'Logs de ce bannissement supprimer', '2022-06-19 23:13:26'),
(69, 'fr', 'store', 'packages', 'Packs', '2022-06-19 23:14:15'),
(70, 'fr', 'store', 'choose_a_server', 'Choisir un serveur', '2022-06-19 23:14:27'),
(71, 'fr', 'store', 'browse_packages', 'Parcourir les Packs', '2022-06-19 23:14:44'),
(72, 'fr', 'store', 'package_category_all', 'Tous les Packs', '2022-06-19 23:15:13'),
(73, 'fr', 'store', 'package_listing_permanent', 'Permanent', '2022-06-19 23:16:19'),
(74, 'fr', 'store', 'package_details', 'Details', '2022-06-19 23:16:28'),
(75, 'fr', 'store', 'purchase_paypal', 'Achat via Paypal', '2022-06-19 23:16:45'),
(76, 'fr', 'store', 'purchase_stripe', 'Achat via Stripe', '2022-06-19 23:16:50'),
(77, 'fr', 'store', 'extend', 'Etendre', '2022-06-19 23:16:54'),
(78, 'fr', 'store', 'credits_input_placeholder', 'montant des crédits', '2022-06-19 23:17:57'),
(79, 'fr', 'store', 'monthly_goal', 'Objectif mensuel', '2022-06-19 23:18:06'),
(80, 'fr', 'store', 'top_donators', 'Top donateurs', '2022-06-19 23:18:14'),
(81, 'fr', 'store', 'recent_donations', 'Donnations récente', '2022-06-19 23:18:21'),
(82, 'fr', 'store', 'sale', 'Promotion', '2022-06-19 23:18:29'),
(83, 'fr', 'store', 'sign_in_to_purchase_credits', 'Se connecter pour acheter des crédits', '2022-06-19 23:19:16'),
(84, 'fr', 'store', 'tos_purchase_disclaimer', 'En effectuant un achat, vous signifiez votre accord avec les %s.', '2022-06-19 23:19:28'),
(85, 'fr', 'store', 'payment_reversal_notification', 'Transaction %s annulée (client interdit)', '2022-06-19 23:19:37'),
(86, 'fr', 'store', 'payments', 'Paiements', '2022-06-19 23:19:43'),
(87, 'fr', 'store', 'package_purchases', 'Pack Acheter', '2022-06-19 23:19:49'),
(88, 'fr', 'store', 'no_payments', 'Aucun paiement à afficher', '2022-06-19 23:19:56'),
(89, 'fr', 'store', 'no_purchases', 'Aucun achat à afficher', '2022-06-19 23:20:06'),
(90, 'fr', 'store', 'redeemed', 'Racheté', '2022-06-19 23:20:16'),
(91, 'fr', 'store', 'unredeemed', 'Non Racheté', '2022-06-19 23:20:24'),
(92, 'fr', 'store', 'expired', 'Expiré', '2022-06-19 23:20:29'),
(93, 'fr', 'store', 'purchase_not_signed_in_title', 'Tu n\'est pas connecté', '2022-06-19 23:20:42'),
(94, 'fr', 'store', 'purchase_not_signed_in_description', 'Vous devez être connecté pour acheter des Packs.', '2022-06-19 23:20:56'),
(95, 'fr', 'store', 'purchase_acknowledge_btn', 'OK', '2022-06-19 23:21:00'),
(96, 'fr', 'store', 'purchase_amount_too_low_title', 'Montant trop faible', '2022-06-19 23:21:06'),
(97, 'fr', 'store', 'purchase_amount_too_low_description', 'En raison des frais de transaction, vous devez acheter au moins %s crédits par transaction. Merci de votre compréhension.', '2022-06-19 23:21:27'),
(98, 'fr', 'store', 'purchase_redirecting_title', 'Veuillez patienter', '2022-06-19 23:21:38'),
(99, 'fr', 'store', 'purchase_redirecting_description', 'Vous allez être redirigé vers la page de paiement.', '2022-06-19 23:21:53'),
(100, 'fr', 'store', 'purchase_redirecting_error_title', 'Erreur de redirection vers le paiement', '2022-06-19 23:22:04'),
(101, 'fr', 'store', 'confirm_purchase_description', 'Êtes-vous sur de vouloir acheter le Pack %s pour %s credits?', '2022-06-19 23:24:06'),
(102, 'fr', 'store', 'confirm_purchase_description_free', 'Êtes-vous sur de vouloir le Pack %s ?', '2022-06-19 23:24:14'),
(103, 'fr', 'store', 'confirm_purchase', 'Oui, acheter!', '2022-06-19 23:24:20'),
(104, 'fr', 'store', 'purchase_success_title', 'Pack Acheter', '2022-06-19 23:24:41'),
(105, 'fr', 'store', 'purchase_success_description', 'Il sera automatiquement donné lors de votre prochaine connexion au serveur.', '2022-06-19 23:27:11'),
(106, 'fr', 'store', 'insufficient_funds_title', 'Fonds Insuffisant', '2022-06-19 23:27:19'),
(107, 'fr', 'store', 'insufficient_funds_description', 'Vous avez besoin de plus de crédits pour acheter cela.', '2022-06-19 23:27:25'),
(108, 'fr', 'store', 'purchase_limit_reached', 'Achat limite atteint', '2022-06-19 23:27:33'),
(109, 'fr', 'store', 'purchase_limit_reached_title', 'Achat limite atteint', '2022-06-19 23:27:39'),
(110, 'fr', 'store', 'purchase_limit_reached_description', 'Vous ne pouvez pas acheter d\'autres Packs de ce type.', '2022-06-19 23:27:51'),
(111, 'fr', 'profile', 'profile_page_title', 'Profile Désactivé %s', '2022-06-19 23:28:07'),
(112, 'fr', 'profile', 'steam_btn', 'Voir', '2022-06-19 23:28:11'),
(113, 'fr', 'profile', 'info', 'Info', '2022-06-19 23:28:15'),
(114, 'fr', 'profile', 'joined', 'Rejoindre', '2022-06-19 23:28:21'),
(115, 'fr', 'profile', 'last_seen', 'Dernière Visite', '2022-06-19 23:28:27'),
(116, 'fr', 'profile', 'last_played', 'Dernier Session', '2022-06-19 23:28:54'),
(117, 'fr', 'profile', 'linked_accounts', 'Comptes Liés', '2022-06-19 23:29:01'),
(118, 'fr', 'profile', 'no_linked_accounts', 'Aucun Comptes Liés', '2022-06-19 23:29:05'),
(119, 'fr', 'notifications', 'mark_all_read_btn', 'Marquer tout comme lu', '2022-06-19 23:29:17'),
(120, 'fr', 'notifications', 'no_notifications', 'Aucune notification trouvée', '2022-06-19 23:29:21'),
(121, 'fr', 'notifications', 'web_push_subscribe_btn', 'Activé les Alertes', '2022-06-19 23:29:24'),
(122, 'fr', 'notifications', 'web_push_unsubscribe_btn', 'Désactiver les Alertes', '2022-06-19 23:29:29'),
(123, 'fr', 'loading_screen', 'welcome', 'Bienvenue, %s', '2022-06-19 23:29:38'),
(124, 'fr', 'loading_screen', 'about_us', 'à propos de nous', '2022-06-19 23:29:44'),
(125, 'fr', 'loading_screen', 'rules', 'Règles', '2022-06-19 23:29:48'),
(126, 'fr', 'loading_screen', 'gamemode_map', 'Vous jouer en %s sur %s.', '2022-06-19 23:29:54'),
(127, 'fr', 'loading_screen', 'darkrp_wallet', '%s €', '2022-06-19 23:30:03'),
(128, 'fr', 'loading_screen', 'pointshop_points', '%s points', '2022-06-19 23:30:12'),
(129, 'fr', 'loading_screen', 'pointshop2_points', '%s points · %s points premium', '2022-06-19 23:30:21'),
(130, 'fr', 'errors', 'maintenance_mode_title', 'Maintenance en Cours', '2022-06-19 23:30:30'),
(131, 'fr', 'errors', 'maintenance_mode_description', 'Nous sommes actuellement en maintenance. Désolé pour le dérangement.', '2022-06-19 23:30:38'),
(132, 'fr', 'errors', 'maintenance_mode_admin_message', 'Mode maintenance actif.', '2022-06-19 23:30:44'),
(133, 'fr', 'admin', 'error_dependent_store_package', 'Les packs associés à ce serveur doivent être supprimés avant de supprimer ce Serveur.', '2022-06-19 23:30:57'),
(134, 'fr', 'forums_dlc', 'forums', 'Forums', '2022-06-19 23:33:57'),
(135, 'fr', 'forums_dlc', 'board', 'Tableau', '2022-06-19 23:34:02'),
(136, 'fr', 'forums_dlc', 'create', 'Créer', '2022-06-19 23:34:06'),
(137, 'fr', 'forums_dlc', 'post', 'Message', '2022-06-19 23:34:11'),
(138, 'fr', 'forums_dlc', 'posts', 'Messages', '2022-06-19 23:34:17'),
(139, 'fr', 'forums_dlc', 'thread', 'Fil de Discussion', '2022-06-19 23:34:21'),
(140, 'fr', 'forums_dlc', 'threads', 'Fils de Discussions', '2022-06-19 23:34:27'),
(141, 'fr', 'forums_dlc', 'reply', 'Réponse', '2022-06-19 23:34:32'),
(142, 'fr', 'forums_dlc', 'replies', 'Répond à', '2022-06-19 23:34:36'),
(143, 'fr', 'forums_dlc', 'member', 'Membre', '2022-06-19 23:34:40'),
(144, 'fr', 'forums_dlc', 'members', 'Membres', '2022-06-19 23:34:44'),
(145, 'fr', 'forums_dlc', 'no_recent_posts', 'Pas de Post récent', '2022-06-19 23:34:49'),
(147, 'fr', 'forums_dlc', 'forum_statistics', 'Statistiques du Forum', '2022-06-19 23:35:46'),
(148, 'fr', 'forums_dlc', 'latest_posts', 'Derniers Message', '2022-06-19 23:37:23'),
(149, 'fr', 'forums_dlc', 'create_new_thread', 'Crée un nouveau thread', '2022-06-19 23:38:03'),
(150, 'fr', 'forums_dlc', 'no_threads', 'Aucun thread trouvé', '2022-06-19 23:37:08'),
(151, 'fr', 'forums_dlc', 'thread_topic', 'Titre du Sujet', '2022-06-19 23:38:11'),
(152, 'fr', 'forums_dlc', 'edit_topic', 'Modifier un Sujet', '2022-06-19 23:38:35'),
(153, 'fr', 'forums_dlc', 'topic_required', 'Un Titre est Requis !', '2022-06-19 23:38:42'),
(154, 'fr', 'forums_dlc', 'post_thread', 'Poster', '2022-06-19 23:38:51'),
(155, 'fr', 'forums_dlc', 'post_reply', 'Poster une Réponse', '2022-06-19 23:38:56'),
(156, 'fr', 'forums_dlc', 'post_changes', 'Appliquer les Modifications', '2022-06-19 23:39:01'),
(157, 'fr', 'forums_dlc', 'cancel_editing', 'Annulé les Modifications', '2022-06-19 23:39:13'),
(158, 'fr', 'forums_dlc', 'quote', 'Citer', '2022-06-19 23:39:19'),
(159, 'fr', 'forums_dlc', 'edit', 'Modifier', '2022-06-19 23:39:53'),
(160, 'fr', 'forums_dlc', 'original_poster', 'Auteur originel ', '2022-06-19 23:40:22'),
(161, 'fr', 'forums_dlc', 'move_thread', 'Déplacer un Thread', '2022-06-19 23:41:27'),
(162, 'fr', 'forums_dlc', 'lock_thread', 'Verrouiller le Thread', '2022-06-19 23:41:22'),
(163, 'fr', 'forums_dlc', 'unlock_thread', 'Débloquer le Thread', '2022-06-19 23:41:45'),
(164, 'fr', 'forums_dlc', 'pin_thread', 'Déverrouiller le Thread', '2022-06-19 23:41:42'),
(165, 'fr', 'forums_dlc', 'unpin_thread', 'Épingler le Thread', '2022-06-19 23:41:59'),
(166, 'fr', 'forums_dlc', 'delete', 'Supprimé', '2022-06-19 23:42:18'),
(167, 'fr', 'forums_dlc', 'thread_has_been_locked', 'Ce Thread à été Verrouiller', '2022-06-19 23:42:30'),
(168, 'fr', 'forums_dlc', 'sign_in_to_reply', 'Se connecter pour répondre', '2022-06-19 23:42:38'),
(169, 'fr', 'forums_dlc', 'total_posts', 'Total des Messages', '2022-06-19 23:43:08'),
(170, 'fr', 'forums_dlc', 'posts_per_day', 'Messages par Jour', '2022-06-19 23:44:31'),
(171, 'fr', 'forums_dlc', 'forums_quote_notification', '%s vous a cité dans un Message', '2022-06-19 23:44:36'),
(172, 'fr', 'forums_dlc', 'forums_mention_notification', '%s vous a mentionné dans un Message', '2022-06-19 23:44:42'),
(173, 'fr', 'forums_dlc', 'search', 'Rechercher', '2022-06-19 23:44:47'),
(174, 'fr', 'forums_dlc', 'search_options', 'Options de recherche', '2022-06-19 23:44:54'),
(175, 'fr', 'forums_dlc', 'forum_search_placeholder', 'Rechercher par Sujet, Publication ou Nom d\'Auteur', '2022-06-19 23:45:03'),
(176, 'fr', 'forums_dlc', 'no_results', 'Aucun Résultats', '2022-06-19 23:45:13'),
(177, 'fr', 'forums_dlc', 'shoutbox_input_placeholder', 'Entrer un message', '2022-06-19 23:45:37'),
(178, 'fr', 'forums_dlc', 'confirm_delete_shout_title', 'Confirmer la suppression du message', '2022-06-19 23:46:09'),
(179, 'fr', 'forums_dlc', 'confirm_delete_shout_description', 'Est tu sûr vouloir supprimer ce message ?', '2022-06-19 23:46:38'),
(180, 'fr', 'forums_dlc', 'quote_author_posted', 'Posté', '2022-06-19 23:47:24');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `locale_category_key` (`locale`,`category`,`key`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=181;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
