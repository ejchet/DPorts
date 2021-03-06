# New ports collection makefile for:	openjdk7
# Date created:				2 January 2010
# Whom:					Greg Lewis <glewis@FreeBSD.org>
#
# $FreeBSD: java/openjdk7/Makefile 321655 2013-06-23 20:45:14Z glewis $
#

PORTNAME=	openjdk
PORTVERSION=	${JDK_MAJOR_VERSION}.${PORT_MINOR_VERSION}.${PORT_BUILD_NUMBER}
CATEGORIES=	java devel
MASTER_SITES=	http://download.java.net/openjdk/jdk${JDK_MAJOR_VERSION}u${JDK_MINOR_VERSION}/promoted/b${JDK_BUILD_NUMBER}/ \
		http://download.java.net/jaxp/1.4.5/:jaxp \
		http://icedtea.classpath.org/download/drops/:jaxp \
		http://download.java.net/glassfish/components/jax-ws/openjdk/jdk7/:jaxws \
		http://icedtea.classpath.org/download/drops/:jaxws \
		https://java.net/downloads/jax-ws/JDK7/:jaf \
		http://icedtea.classpath.org/download/drops/:jaf \
		http://dl.wolfpond.org/openjdk7/:bootstrap \
		${MASTER_SITE_APACHE:S,%SUBDIR%/,ant/binaries/:ant,}
DISTFILES=	${JDK_SRC_DISTFILE}${EXTRACT_SUFX} \
		${BOOTSTRAP_DISTFILE}:bootstrap \
		${ANT_DISTFILE}${EXTRACT_SUFX}:ant
EXTRACT_ONLY=	${JDK_SRC_DISTFILE}${EXTRACT_SUFX} \
		${BOOTSTRAP_DISTFILE} \
		${ANT_DISTFILE}${EXTRACT_SUFX}

MAINTAINER=	glewis@FreeBSD.org
COMMENT=	Java Development Kit 7

LICENSE=	GPLv2

WRKSRC=		${WRKDIR}/${PORTNAME}

EXTRACT_SUFX=	.zip
USE_GMAKE=	yes
USES=		iconv
USE_XORG+=	x11 xext xi xrender xt xtst

OPTIONS_DEFINE=		DEBUG POLICY TZUPDATE
OPTIONS_DEFAULT=	POLICY TZUPDATE
DEBUG_DESC=		Enable extra debugging info
POLICY_DESC=		Install the Unlimited Strength Policy Files
TZUPDATE_DESC=		Update the time zone data

PORT_MINOR_VERSION=	25
PORT_BUILD_NUMBER=	15
JDK_MAJOR_VERSION=	7
JDK_MINOR_VERSION=	6
JDK_BUILD_NUMBER=	24
JDK_BUILD_DATE=		09_aug_2012
JDK_SRC_DISTFILE=	${PORTNAME}-${JDK_MAJOR_VERSION}u${JDK_MINOR_VERSION}-fcs-src-b${JDK_BUILD_NUMBER}-${JDK_BUILD_DATE}

# Use our own version of ant to avoid circular dependencies
ANT_VERSION=		1.8.4
ANT_DISTFILE=		apache-ant-${ANT_VERSION}-bin

LATEST_LINK=		openjdk7

LIB_DEPENDS+=	freetype:${PORTSDIR}/print/freetype2 \
		asound:${PORTSDIR}/audio/alsa-lib
BUILD_DEPENDS+=	zip:${PORTSDIR}/archivers/zip \
		unzip:${PORTSDIR}/archivers/unzip \
		javavm:${PORTSDIR}/java/javavmwrapper \
		${LOCALBASE}/include/cups/cups.h:${PORTSDIR}/print/cups-client
RUN_DEPENDS+=	javavm:${PORTSDIR}/java/javavmwrapper \
		${LOCALBASE}/lib/X11/fonts/dejavu:${PORTSDIR}/x11-fonts/dejavu

USE_DOS2UNIX=	jdk/src/share/classes/com/sun/org/apache/xml/internal/security/resource/xmlsecurity_en.properties

JDK_ARCH=	${ARCH:S/x86_64/amd64/}
OPENJDK_OSARCH=	bsd-${JDK_ARCH:S/i386/i586/}
INSTALLDIR=	${PREFIX}/${PORTNAME}${JDK_MAJOR_VERSION}

BOOTSTRAP_DISTFILE=	bootstrap-openjdk-7.9.05_2.dfly-3.3-${JDK_ARCH}.tar.xz
BOOTSTRAP_LIBDIRS=	${BOOTSTRAPJDKDIR}/jre/lib/${JDK_ARCH}
NOPRECIOUSMAKEVARS=	yes

ONLY_FOR_ARCHS=	i386 amd64

FETCH_ARGS=	-Fpr
MAKE_ENV+=	LANG="C" \
		LC_ALL="C" \
		JAVA_HOME="" \
		CLASSPATH="" \
		LD_LIBRARY_PATH="${BOOTSTRAP_LIBDIRS}" \
		MAKEFLAGS="" \
		ALT_BOOTDIR="${BOOTSTRAPJDKDIR}" \
		ALT_FREETYPE_HEADERS_PATH="${LOCALBASE}/include" \
		ALT_FREETYPE_LIB_PATH="${LOCALBASE}/lib" \
		ALT_CUPS_HEADERS_PATH="${LOCALBASE}/include" \
		ALT_X11_PATH="${LOCALBASE}" \
		ALT_PKG_PATH="${LOCALBASE}" \
		ALT_PACKAGE_PATH="${LOCALBASE}" \
		ANT_HOME="${WRKDIR}/apache-ant-${ANT_VERSION}" \
		JAVACMD=${BOOTSTRAPJDKDIR}/bin/java \
		X11DIR="${LOCALBASE}" \
		LOCALDIR="${LOCALBASE}" \
		NO_DOCS="true" \
		SKIP_COMPARE_IMAGES="true" \
		SKIP_FASTDEBUG_BUILD="true" \
		SKIP_DEBUG_BUILD="true" \
		ZIP_DEBUGINFO_FILES=0 \
		ENABLE_FULL_DEBUG_SYMBOLS=0 \
		PTHREAD_LIBS="${PTHREAD_LIBS}" \
		MILESTONE="fcs" \
		JDK_MICRO_VERSION="0_${PORT_MINOR_VERSION}" \
		BUILD_NUMBER="b${PORT_BUILD_NUMBER}"

MAKE_ENV+=	HOTSPOT_BUILD_JOBS=${MAKE_JOBS_NUMBER}
MAKE_ENV+=	ALT_PARALLEL_COMPILE_JOBS=${MAKE_JOBS_NUMBER}

SECURITY_ICONS= security-icon-bw16.png \
		security-icon-bw24.png \
		security-icon-bw32.png \
		security-icon-bw48.png \
		security-icon-interim16.png \
		security-icon-interim24.png \
		security-icon-interim32.png \
		security-icon-interim48.png \
		security-icon-yellow16.png \
		security-icon-yellow24.png \
		security-icon-yellow32.png \
		security-icon-yellow48.png

.include <bsd.port.options.mk>

.if ${OPSYS} == DragonFly && ${DFLYVERSION} > 300500
BOOTSTRAP_DISTFILE= bootstrap-openjdk-7.21.11.dfly-3.5-${JDK_ARCH}.tar.xz
.endif

.if empty(PORT_OPTIONS:MDEBUG)
MAKE_ENV+=	ALT_OBJCOPY="/nonexistent"
.endif

.if ${PORT_OPTIONS:MTZUPDATE}
RUN_DEPENDS+=  ${LOCALBASE}/share/java/zi:${PORTSDIR}/java/java-zoneinfo
.endif

BOOTSTRAPJDKDIR=	${WRKDIR}/bootstrap

post-extract:
	# Move icons to their new home.
	@${MKDIR} ${WRKSRC}/jdk/src/share/classes/sun/awt/resources
.for icon in ${SECURITY_ICONS}
	@${MV} ${WRKSRC}/jdk/src/solaris/classes/sun/awt/X11/${icon} \
		${WRKSRC}/jdk/src/share/classes/sun/awt/resources/
.endfor

post-patch:
	@${REINPLACE_CMD} "s|%%LOCALBASE%%|${LOCALBASE}|" \
		${WRKSRC}/hotspot/src/os/bsd/vm/os_bsd.cpp
.if ${PORT_OPTIONS:MPOLICY}
	@${REINPLACE_CMD} 's|build-policy install-limited|build-policy install-unlimited|' \
		${WRKSRC}/jdk/make/javax/crypto/Makefile
.endif

# override do-build to filter out _MAKE_JOBS to enable parallel build
do-build:
	@cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${MAKE_CMD} \
		${MAKE_FLAGS} ${MAKEFILE} ${MAKE_ARGS} ${ALL_TARGET}

.if ${PORT_OPTIONS:MTZUPDATE}
pre-install:
	@# Update time zones
	@${RM} -rf ${WRKSRC}/build/${OPENJDK_OSARCH}/j2sdk-image/jre/lib/zi
	@${LN} -s -f ${LOCALBASE}/share/java/zi \
		${WRKSRC}/build/${OPENJDK_OSARCH}/j2sdk-image/jre/lib
.endif

do-install:
	@${MKDIR} ${INSTALLDIR}
	@cd ${WRKSRC}/build/${OPENJDK_OSARCH}/j2sdk-image && \
		${COPYTREE_SHARE} . ${INSTALLDIR}
	@${INSTALL_DATA} ${WRKSRC}/build/${OPENJDK_OSARCH}/btjars/compilefontconfig.jar ${WRKSRC}/build/${OPENJDK_OSARCH}/btjars/javazic.jar ${INSTALLDIR}/jre/lib/
	@for dir in `${FIND} ${INSTALLDIR} -name bin -type d`; do \
		${CHOWN} -h -R ${BINOWN}:${BINGRP} $$dir; \
		${FIND} $$dir -type f -exec ${CHMOD} ${BINMODE} "{}" \; ; \
	done
	@${CHOWN} ${BINOWN}:${BINGRP} ${INSTALLDIR}/jre/lib/${JDK_ARCH}/jexec
	@${CHMOD} ${BINMODE} ${INSTALLDIR}/jre/lib/${JDK_ARCH}/jexec
	@${INSTALL_DATA} ${FILESDIR}/cacerts ${INSTALLDIR}/jre/lib/security/cacerts
	@${ECHO} "@unexec ${LOCALBASE}/bin/unregistervm ${INSTALLDIR}/bin/java" >> ${TMPPLIST}
	@${FIND} -s ${INSTALLDIR} -not -type d | ${SORT} | \
		${SED} -e 's#^${PREFIX}/##' >> ${TMPPLIST}
	@${FIND} ${INSTALLDIR} -type d | ${SORT} -r | \
		${SED} -e 's,^${PREFIX}/,@dirrm ,' >> ${TMPPLIST}
	@${ECHO} "@exec ${LOCALBASE}/bin/registervm '${INSTALLDIR}/bin/java # OpenJDK${JDK_MAJOR_VERSION}'" >> ${TMPPLIST}

post-install:
	# Register the VM
	"${LOCALBASE}/bin/registervm" "${INSTALLDIR}/bin/java # OpenJDK${JDK_MAJOR_VERSION}"

.include <bsd.port.mk>
