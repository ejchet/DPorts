# $FreeBSD: japanese/bugzilla3/Makefile 315642 2013-03-31 17:36:29Z ohauer $

PORTNAME=	bugzilla
PORTVERSION=	3.6.13
CATEGORIES=	japanese
MASTER_SITES=	http://bug-ja.org/releases/3.6/ \
		LOCAL
MASTER_SITE_SUBDIR=	tota/bugzilla-ja
DISTNAME=	Bugzilla-ja-${PORTVERSION}-template-rel01

MAINTAINER=	bugzilla@FreeBSD.org
COMMENT=	Japanese localization for Bugzilla

RUN_DEPENDS=	bugzilla>=${PORTVERSION}:${PORTSDIR}/devel/bugzilla3

LATEST_LINK=	${PKGNAMEPREFIX}bugzilla3

NO_WRKSUBDIR=	yes

.include "${.CURDIR}/../../devel/bugzilla3/Makefile.common"

USE_BZIP2=	yes

LANGDIR=	${WWWDIR}/template/ja

do-install:
	@-${MKDIR} ${LANGDIR}/default
	@cd ${WRKDIR}/default; ${COPYTREE_SHARE} . ${LANGDIR}/default
.if !defined(BATCH)
	@${ECHO_MSG}
	@${CAT} ${PKGMESSAGE}
	@${ECHO_MSG}
.endif

# Maintainer
plist: patch
	@( cd ${WRKDIR}/ && ${FIND} default -type f | ${AWK} '{print "%%WWWDIR%%/template/ja/"$$1}' | ${SORT} > ${PLIST}.new )
	@( cd ${WRKDIR}/ && ${FIND} default -type d | ${AWK} '{print "@dirrmtry %%WWWDIR%%/template/ja/"$$1}' | ${SORT} -r >> ${PLIST}.new )
	@${ECHO} "@dirrmtry %%WWWDIR%%/template/ja" >> ${PLIST}.new
	@if ${DIFF} -u ${PLIST} ${PLIST}.new ; then \
		${ECHO_MSG} no pkg-plist changes; \
		${RM} ${PLIST}.new ; \
	fi

.include <bsd.port.mk>
