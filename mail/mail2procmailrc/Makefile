# Created by: ijliao
# $FreeBSD: mail/mail2procmailrc/Makefile 324181 2013-08-03 08:45:51Z az $

PORTNAME=	mail2procmailrc
PORTVERSION=	0.9
CATEGORIES=	mail
MASTER_SITES=	http://www.tux.org/~timball/download/
DISTNAME=	${PORTNAME}

MAINTAINER=	ports@FreeBSD.org
COMMENT=	mail to procmailrc generator

RUN_DEPENDS=	p5-Curses>=0:${PORTSDIR}/devel/p5-Curses \
		p5-Curses-Widgets>=0:${PORTSDIR}/devel/p5-Curses-Widgets \
		p5-Mail-Tools>=0:${PORTSDIR}/mail/p5-Mail-Tools

USES=		perl5
NO_BUILD=	yes

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/generateproc.pl ${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKSRC}/mail2procmail.pl ${PREFIX}/bin/mail2procmail

.include <bsd.port.mk>
