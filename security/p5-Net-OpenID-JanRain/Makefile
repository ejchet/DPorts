# Created by: Cheng-Lung Sung <clsung@FreeBSD.org>
# $FreeBSD: security/p5-Net-OpenID-JanRain/Makefile 324174 2013-08-02 18:52:07Z mat $

PORTNAME=	Net-OpenID-JanRain
PORTVERSION=	1.1.1
PORTREVISION=	2
CATEGORIES=	security perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	OpenID JanRain and Consumer with JanRain API

BUILD_DEPENDS=	p5-Crypt-DH>=0:${PORTSDIR}/security/p5-Crypt-DH \
		p5-Digest-HMAC>=0:${PORTSDIR}/security/p5-Digest-HMAC \
		p5-LWPx-ParanoidAgent>=0:${PORTSDIR}/www/p5-LWPx-ParanoidAgent \
		p5-Net-Yadis>=0:${PORTSDIR}/net/p5-Net-Yadis \
		p5-libwww>=0:${PORTSDIR}/www/p5-libwww
RUN_DEPENDS:=	${BUILD_DEPENDS}

USES=		perl5
USE_PERL5=	configure

MAN3=		Net::OpenID::JanRain::Consumer.3 \
		Net::OpenID::JanRain::Server.3 \
		Net::OpenID::JanRain::Stores::FileStore.3 \
		Net::OpenID::JanRain::Stores::MySQLStore.3 \
		Net::OpenID::JanRain::Stores::PostgreSQLStore.3 \
		Net::OpenID::JanRain::Stores::SQLStore.3 \
		Net::OpenID::JanRain::Stores::SQLiteStore.3 \
		Net::OpenID::JanRain::Util.3

.include <bsd.port.mk>
