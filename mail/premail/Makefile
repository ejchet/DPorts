# Created by: ache
# $FreeBSD: mail/premail/Makefile 323680 2013-07-26 05:33:51Z az $

PORTNAME=	premail
PORTVERSION=	0.46
PORTREVISION=	1
CATEGORIES=	mail security
MASTER_SITES=	ftp://ftp.jpunix.com/pub/remailer-tools/ \
		ftp://ftp.kiarchive.ru/pub/unix/crypto/

MAINTAINER=	m.tsatsenko@gmail.com
COMMENT=	E-mail privacy package, support anon remailers, PGP, nyms

BUILD_DEPENDS+=	pgp:${PORTSDIR}/security/pgp

WRKSRC=		${WRKDIR}/premail
USE_PERL5=	yes
NO_BUILD=	yes
USES=		shebangfix
SHEBANG_FILES=	premail

do-install:
	cd ${WRKSRC} && ${INSTALL_SCRIPT} premail ${PREFIX}/bin
	${MKDIR} -m 555 ${PREFIX}/share/doc/premail
	cd ${WRKSRC} && ${INSTALL_DATA} \
	   preferences doc-0.46.html doc-0.46.txt ${PREFIX}/share/doc/premail
	@${ECHO_MSG}
	@${ECHO_MSG} "Check ${PREFIX}/share/doc/premail for further instructions"
	@${ECHO_MSG}

.include <bsd.port.mk>
