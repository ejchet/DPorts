# New ports collection makefile for:	p5-qdbm
# Date created:		2005-09-01
# Whom:			Michael Johnson <ahze@FreeBSD.org>
#
# $FreeBSD: databases/p5-qdbm/Makefile 324191 2013-08-03 13:44:00Z mat $
#

PKGNAMEPREFIX=	p5-

COMMENT=	Perl API for QDBM

SLAVEPORT=	perl
USES=		perl5

MASTERDIR=	${.CURDIR}/../../databases/qdbm
WRKSRC=		${WRKDIR}/${PORTNAME}-${PORTVERSION}/perl
PLIST=		${.CURDIR}/pkg-plist
DESCR=		${.CURDIR}/pkg-descr
PATCHDIR=	${.CURDIR}/files

MAKE_JOBS_UNSAFE=	yes

.include "${MASTERDIR}/Makefile"
