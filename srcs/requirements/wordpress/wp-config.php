<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/documentation/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wordpress' );

/** Database username */
define( 'DB_USER', 'wordpress_user' );

/** Database password */
define( 'DB_PASSWORD', 'pass' );

/** Database hostname */
define( 'DB_HOST', 'db' );
define('DB_PORT', '3306');
/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

define( 'FS_METHOD', 'direct' );


/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */

define('AUTH_KEY',         'bd46GyQ6,-,x$M5;jK>>R;bRy*w+P*h#!+|Dwz}J=y!O![UH7k(&i*y_/#P9-L/E');
define('SECURE_AUTH_KEY',  'it=Kbi?A`:$|hNe%FsIs@!qm1gw-`@~WlkCj$s6Ub[dj/Xb,Mf<NqE5a[,:s0GH+');
define('LOGGED_IN_KEY',    '(pm<#r-XE/TDAUS3f7Y(~2W?|V}U<Xg4UbOG ^j%2)|~fGX2Z{,](}$*O8-rf1ZV');
define('NONCE_KEY',        '5>;G3ycKR9P(<aI!-ZC5}e!#C_99XVAsg*g|9a:Z/jD%R{s1~8lL.1^WxX46-hE|');
define('AUTH_SALT',        'A0-,ZHB$n63UwzJ>V~n@DjX%|,7rAu <e#1XuB|Ji$v0-0 .|M01q2H)--G}3+0;');
define('SECURE_AUTH_SALT', 'GY4[$)JSH|tb7[*<tuX2d8K6v0xoBRDkrZ1Fj@K4I%N*x~kSCT%yDYNw}~K7ErXU');
define('LOGGED_IN_SALT',   'GgK[IUn8n;-LNnG_[|q&KXdR.P%c>}.HxkTt9(JbDy*3V>Lpmz4~/kKGmpd2lh-G');
define('NONCE_SALT',       '3 pk:_[xtCTDR+*R6~rwAYz)):_Uc!K)+;.}l@oQ|Je!w4:ds1=Fi&42L_tNljNk');

/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/documentation/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
