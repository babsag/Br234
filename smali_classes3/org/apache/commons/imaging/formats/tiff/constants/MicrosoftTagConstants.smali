.class public final Lorg/apache/commons/imaging/formats/tiff/constants/MicrosoftTagConstants;
.super Ljava/lang/Object;
.source "MicrosoftTagConstants.java"


# static fields
.field public static final ALL_MICROSOFT_TAGS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXIF_TAG_RATING:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

.field public static final EXIF_TAG_RATING_PERCENT:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

.field public static final EXIF_TAG_XPAUTHOR:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoXpString;

.field public static final EXIF_TAG_XPCOMMENT:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoXpString;

.field public static final EXIF_TAG_XPKEYWORDS:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoXpString;

.field public static final EXIF_TAG_XPSUBJECT:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoXpString;

.field public static final EXIF_TAG_XPTITLE:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoXpString;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_IFD0:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const-string v2, "Rating"

    const/16 v3, 0x4746

    invoke-direct {v0, v2, v3, v1}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;-><init>(Ljava/lang/String;ILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/MicrosoftTagConstants;->EXIF_TAG_RATING:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    .line 2
    new-instance v2, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    const-string v3, "RatingPercent"

    const/16 v4, 0x4749

    invoke-direct {v2, v3, v4, v1}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;-><init>(Ljava/lang/String;ILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v2, Lorg/apache/commons/imaging/formats/tiff/constants/MicrosoftTagConstants;->EXIF_TAG_RATING_PERCENT:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    .line 3
    new-instance v3, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoXpString;

    const-string v4, "XPTitle"

    const v5, 0x9c9b

    invoke-direct {v3, v4, v5, v1}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoXpString;-><init>(Ljava/lang/String;ILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v3, Lorg/apache/commons/imaging/formats/tiff/constants/MicrosoftTagConstants;->EXIF_TAG_XPTITLE:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoXpString;

    .line 4
    new-instance v4, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoXpString;

    const-string v5, "XPComment"

    const v6, 0x9c9c

    invoke-direct {v4, v5, v6, v1}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoXpString;-><init>(Ljava/lang/String;ILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v4, Lorg/apache/commons/imaging/formats/tiff/constants/MicrosoftTagConstants;->EXIF_TAG_XPCOMMENT:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoXpString;

    .line 5
    new-instance v5, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoXpString;

    const-string v6, "XPAuthor"

    const v7, 0x9c9d

    invoke-direct {v5, v6, v7, v1}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoXpString;-><init>(Ljava/lang/String;ILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v5, Lorg/apache/commons/imaging/formats/tiff/constants/MicrosoftTagConstants;->EXIF_TAG_XPAUTHOR:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoXpString;

    .line 6
    new-instance v6, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoXpString;

    const-string v7, "XPKeywords"

    const v8, 0x9c9e

    invoke-direct {v6, v7, v8, v1}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoXpString;-><init>(Ljava/lang/String;ILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v6, Lorg/apache/commons/imaging/formats/tiff/constants/MicrosoftTagConstants;->EXIF_TAG_XPKEYWORDS:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoXpString;

    .line 7
    new-instance v7, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoXpString;

    const-string v8, "XPSubject"

    const v9, 0x9c9f

    invoke-direct {v7, v8, v9, v1}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoXpString;-><init>(Ljava/lang/String;ILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v7, Lorg/apache/commons/imaging/formats/tiff/constants/MicrosoftTagConstants;->EXIF_TAG_XPSUBJECT:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoXpString;

    const/4 v1, 0x7

    new-array v1, v1, [Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;

    const/4 v8, 0x0

    aput-object v0, v1, v8

    const/4 v0, 0x1

    aput-object v2, v1, v0

    const/4 v0, 0x2

    aput-object v3, v1, v0

    const/4 v0, 0x3

    aput-object v4, v1, v0

    const/4 v0, 0x4

    aput-object v5, v1, v0

    const/4 v0, 0x5

    aput-object v6, v1, v0

    const/4 v0, 0x6

    aput-object v7, v1, v0

    .line 8
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/MicrosoftTagConstants;->ALL_MICROSOFT_TAGS:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
