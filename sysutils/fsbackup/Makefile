# Created by: samm
# $FreeBSD: sysutils/fsbackup/Makefile 317610 2013-05-07 14:02:30Z bapt $

PORTNAME=	fsbackup
PORTVERSION=	1.2.1
PORTREVISION=	2
CATEGORIES=	sysutils
MASTER_SITES=	http://www.opennet.ru/dev/fsbackup/src/
DISTNAME=	fsbackup-1.2pl1

MAINTAINER=	samm@os2.kiev.ua
COMMENT=	File system backup and synchronization utility

RUN_DEPENDS=	p5-Net>=0:${PORTSDIR}/net/p5-Net

USES=		shebangfix
USE_PERL5=	yes
SHEBANG_FILES=	contrib/*.pl \
		*.pl

MAN1=		fsbackup.1
MANCOMPRESSED=	no

NO_BUILD=	yes
NO_INSTALL_MANPAGES=yes

do-install:
	@cd ${WRKSRC};./install.pl --prefix=${PREFIX}/fsbackup --prefix-man=${MANPREFIX}/man/man1
	@${RM} ${PREFIX}/fsbackup/fsbackup.1

.include <bsd.port.mk>
