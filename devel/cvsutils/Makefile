# Created by: knu@FreeBSD.org
# $FreeBSD: devel/cvsutils/Makefile 319715 2013-06-02 18:58:23Z mva $

PORTNAME=	cvsutils
PORTVERSION=	0.2.6
PORTEPOCH=	1
CATEGORIES=	devel
MASTER_SITES=	http://www.red-bean.com/cvsutils/releases/

MAINTAINER=	mva@FreeBSD.org
COMMENT=	CVS utilities which facilitate working with local working directories

LICENSE=	GPLv2

USE_PERL5=	yes
GNU_CONFIGURE=	yes

MAN1=		cvsutils.1

OPTIONS_DEFINE=	DOCS

.include <bsd.port.options.mk>

post-install:
.if ${PORT_OPTIONS:MDOCS}
	${MKDIR} ${DOCSDIR}
.for f in AUTHORS ChangeLog NEWS README
	${INSTALL_DATA} ${WRKSRC}/${f} ${DOCSDIR}/
.endfor
.endif

.include <bsd.port.mk>
