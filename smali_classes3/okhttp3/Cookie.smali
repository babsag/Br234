.class public final Lokhttp3/Cookie;
.super Ljava/lang/Object;
.source "Cookie.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/Cookie$Builder;,
        Lokhttp3/Cookie$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\t\n\u0002\u0010\t\n\u0002\u0008!\u0018\u0000 62\u00020\u0001:\u000276BQ\u0008\u0002\u0012\u0006\u0010\u0011\u001a\u00020\r\u0012\u0006\u0010\u0013\u001a\u00020\r\u0012\u0006\u0010\u001a\u001a\u00020\u0017\u0012\u0006\u0010\u001e\u001a\u00020\r\u0012\u0006\u0010 \u001a\u00020\r\u0012\u0006\u0010$\u001a\u00020\u0004\u0012\u0006\u0010\"\u001a\u00020\u0004\u0012\u0006\u0010\u0016\u001a\u00020\u0004\u0012\u0006\u0010\u001c\u001a\u00020\u0004\u00a2\u0006\u0004\u00084\u00105J\u0015\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u001a\u0010\u0008\u001a\u00020\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0001H\u0096\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0017\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000f\u0010\u000e\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u000f\u0010\u0011\u001a\u00020\rH\u0007\u00a2\u0006\u0004\u0008\u0010\u0010\u000fJ\u000f\u0010\u0013\u001a\u00020\rH\u0007\u00a2\u0006\u0004\u0008\u0012\u0010\u000fJ\u000f\u0010\u0016\u001a\u00020\u0004H\u0007\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u000f\u0010\u001a\u001a\u00020\u0017H\u0007\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u000f\u0010\u001c\u001a\u00020\u0004H\u0007\u00a2\u0006\u0004\u0008\u001b\u0010\u0015J\u000f\u0010\u001e\u001a\u00020\rH\u0007\u00a2\u0006\u0004\u0008\u001d\u0010\u000fJ\u000f\u0010 \u001a\u00020\rH\u0007\u00a2\u0006\u0004\u0008\u001f\u0010\u000fJ\u000f\u0010\"\u001a\u00020\u0004H\u0007\u00a2\u0006\u0004\u0008!\u0010\u0015J\u000f\u0010$\u001a\u00020\u0004H\u0007\u00a2\u0006\u0004\u0008#\u0010\u0015J\u0017\u0010\u000e\u001a\u00020\r2\u0006\u0010%\u001a\u00020\u0004H\u0000\u00a2\u0006\u0004\u0008&\u0010\'R\u0019\u0010\"\u001a\u00020\u00048\u0007@\u0006\u00a2\u0006\u000c\n\u0004\u0008(\u0010)\u001a\u0004\u0008\"\u0010\u0015R\u0019\u0010\u0016\u001a\u00020\u00048\u0007@\u0006\u00a2\u0006\u000c\n\u0004\u0008*\u0010)\u001a\u0004\u0008\u0016\u0010\u0015R\u0019\u0010\u001a\u001a\u00020\u00178\u0007@\u0006\u00a2\u0006\u000c\n\u0004\u0008+\u0010,\u001a\u0004\u0008\u001a\u0010\u0019R\u0019\u0010\u0013\u001a\u00020\r8\u0007@\u0006\u00a2\u0006\u000c\n\u0004\u0008-\u0010.\u001a\u0004\u0008\u0013\u0010\u000fR\u0019\u0010\u001c\u001a\u00020\u00048\u0007@\u0006\u00a2\u0006\u000c\n\u0004\u0008/\u0010)\u001a\u0004\u0008\u001c\u0010\u0015R\u0019\u0010 \u001a\u00020\r8\u0007@\u0006\u00a2\u0006\u000c\n\u0004\u00080\u0010.\u001a\u0004\u0008 \u0010\u000fR\u0019\u0010\u0011\u001a\u00020\r8\u0007@\u0006\u00a2\u0006\u000c\n\u0004\u00081\u0010.\u001a\u0004\u0008\u0011\u0010\u000fR\u0019\u0010\u001e\u001a\u00020\r8\u0007@\u0006\u00a2\u0006\u000c\n\u0004\u00082\u0010.\u001a\u0004\u0008\u001e\u0010\u000fR\u0019\u0010$\u001a\u00020\u00048\u0007@\u0006\u00a2\u0006\u000c\n\u0004\u00083\u0010)\u001a\u0004\u0008$\u0010\u0015\u00a8\u00068"
    }
    d2 = {
        "Lokhttp3/Cookie;",
        "",
        "Lokhttp3/HttpUrl;",
        "url",
        "",
        "matches",
        "(Lokhttp3/HttpUrl;)Z",
        "other",
        "equals",
        "(Ljava/lang/Object;)Z",
        "",
        "hashCode",
        "()I",
        "",
        "toString",
        "()Ljava/lang/String;",
        "-deprecated_name",
        "name",
        "-deprecated_value",
        "value",
        "-deprecated_persistent",
        "()Z",
        "persistent",
        "",
        "-deprecated_expiresAt",
        "()J",
        "expiresAt",
        "-deprecated_hostOnly",
        "hostOnly",
        "-deprecated_domain",
        "domain",
        "-deprecated_path",
        "path",
        "-deprecated_httpOnly",
        "httpOnly",
        "-deprecated_secure",
        "secure",
        "forObsoleteRfc2965",
        "toString$okhttp",
        "(Z)Ljava/lang/String;",
        "k",
        "Z",
        "l",
        "g",
        "J",
        "f",
        "Ljava/lang/String;",
        "m",
        "i",
        "e",
        "h",
        "j",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ZZZZ)V",
        "Companion",
        "Builder",
        "okhttp"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# static fields
.field public static final Companion:Lokhttp3/Cookie$Companion;

.field private static final a:Ljava/util/regex/Pattern;

.field private static final b:Ljava/util/regex/Pattern;

.field private static final c:Ljava/util/regex/Pattern;

.field private static final d:Ljava/util/regex/Pattern;


# instance fields
.field private final e:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final f:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final g:J

.field private final h:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final i:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final j:Z

.field private final k:Z

.field private final l:Z

.field private final m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lokhttp3/Cookie$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokhttp3/Cookie$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lokhttp3/Cookie;->Companion:Lokhttp3/Cookie$Companion;

    const-string v0, "(\\d{2,4})[^\\d]*"

    .line 1
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lokhttp3/Cookie;->a:Ljava/util/regex/Pattern;

    const-string v0, "(?i)(jan|feb|mar|apr|may|jun|jul|aug|sep|oct|nov|dec).*"

    .line 2
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lokhttp3/Cookie;->b:Ljava/util/regex/Pattern;

    const-string v0, "(\\d{1,2})[^\\d]*"

    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lokhttp3/Cookie;->c:Ljava/util/regex/Pattern;

    const-string v0, "(\\d{1,2}):(\\d{1,2}):(\\d{1,2})[^\\d]*"

    .line 4
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lokhttp3/Cookie;->d:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ZZZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/Cookie;->e:Ljava/lang/String;

    iput-object p2, p0, Lokhttp3/Cookie;->f:Ljava/lang/String;

    iput-wide p3, p0, Lokhttp3/Cookie;->g:J

    iput-object p5, p0, Lokhttp3/Cookie;->h:Ljava/lang/String;

    iput-object p6, p0, Lokhttp3/Cookie;->i:Ljava/lang/String;

    iput-boolean p7, p0, Lokhttp3/Cookie;->j:Z

    iput-boolean p8, p0, Lokhttp3/Cookie;->k:Z

    iput-boolean p9, p0, Lokhttp3/Cookie;->l:Z

    iput-boolean p10, p0, Lokhttp3/Cookie;->m:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ZZZZLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 2
    invoke-direct/range {p0 .. p10}, Lokhttp3/Cookie;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ZZZZ)V

    return-void
.end method

.method public static final synthetic access$getDAY_OF_MONTH_PATTERN$cp()Ljava/util/regex/Pattern;
    .locals 1

    .line 1
    sget-object v0, Lokhttp3/Cookie;->c:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method public static final synthetic access$getMONTH_PATTERN$cp()Ljava/util/regex/Pattern;
    .locals 1

    .line 1
    sget-object v0, Lokhttp3/Cookie;->b:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method public static final synthetic access$getTIME_PATTERN$cp()Ljava/util/regex/Pattern;
    .locals 1

    .line 1
    sget-object v0, Lokhttp3/Cookie;->d:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method public static final synthetic access$getYEAR_PATTERN$cp()Ljava/util/regex/Pattern;
    .locals 1

    .line 1
    sget-object v0, Lokhttp3/Cookie;->a:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method public static final parse(Lokhttp3/HttpUrl;Ljava/lang/String;)Lokhttp3/Cookie;
    .locals 1
    .param p0    # Lokhttp3/HttpUrl;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    sget-object v0, Lokhttp3/Cookie;->Companion:Lokhttp3/Cookie$Companion;

    invoke-virtual {v0, p0, p1}, Lokhttp3/Cookie$Companion;->parse(Lokhttp3/HttpUrl;Ljava/lang/String;)Lokhttp3/Cookie;

    move-result-object p0

    return-object p0
.end method

.method public static final parseAll(Lokhttp3/HttpUrl;Lokhttp3/Headers;)Ljava/util/List;
    .locals 1
    .param p0    # Lokhttp3/HttpUrl;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lokhttp3/Headers;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/HttpUrl;",
            "Lokhttp3/Headers;",
            ")",
            "Ljava/util/List<",
            "Lokhttp3/Cookie;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lokhttp3/Cookie;->Companion:Lokhttp3/Cookie$Companion;

    invoke-virtual {v0, p0, p1}, Lokhttp3/Cookie$Companion;->parseAll(Lokhttp3/HttpUrl;Lokhttp3/Headers;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final -deprecated_domain()Ljava/lang/String;
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "moved to val"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "domain"
            imports = {}
        .end subannotation
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "-deprecated_domain"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/Cookie;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final -deprecated_expiresAt()J
    .locals 2
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "moved to val"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "expiresAt"
            imports = {}
        .end subannotation
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "-deprecated_expiresAt"
    .end annotation

    .line 1
    iget-wide v0, p0, Lokhttp3/Cookie;->g:J

    return-wide v0
.end method

.method public final -deprecated_hostOnly()Z
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "moved to val"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "hostOnly"
            imports = {}
        .end subannotation
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "-deprecated_hostOnly"
    .end annotation

    .line 1
    iget-boolean v0, p0, Lokhttp3/Cookie;->m:Z

    return v0
.end method

.method public final -deprecated_httpOnly()Z
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "moved to val"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "httpOnly"
            imports = {}
        .end subannotation
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "-deprecated_httpOnly"
    .end annotation

    .line 1
    iget-boolean v0, p0, Lokhttp3/Cookie;->k:Z

    return v0
.end method

.method public final -deprecated_name()Ljava/lang/String;
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "moved to val"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "name"
            imports = {}
        .end subannotation
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "-deprecated_name"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/Cookie;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final -deprecated_path()Ljava/lang/String;
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "moved to val"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "path"
            imports = {}
        .end subannotation
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "-deprecated_path"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/Cookie;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final -deprecated_persistent()Z
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "moved to val"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "persistent"
            imports = {}
        .end subannotation
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "-deprecated_persistent"
    .end annotation

    .line 1
    iget-boolean v0, p0, Lokhttp3/Cookie;->l:Z

    return v0
.end method

.method public final -deprecated_secure()Z
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "moved to val"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "secure"
            imports = {}
        .end subannotation
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "-deprecated_secure"
    .end annotation

    .line 1
    iget-boolean v0, p0, Lokhttp3/Cookie;->j:Z

    return v0
.end method

.method public final -deprecated_value()Ljava/lang/String;
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "moved to val"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "value"
            imports = {}
        .end subannotation
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "-deprecated_value"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/Cookie;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final domain()Ljava/lang/String;
    .locals 1
    .annotation build Lkotlin/jvm/JvmName;
        name = "domain"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/Cookie;->h:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    instance-of v0, p1, Lokhttp3/Cookie;

    if-eqz v0, :cond_0

    check-cast p1, Lokhttp3/Cookie;

    iget-object v0, p1, Lokhttp3/Cookie;->e:Ljava/lang/String;

    iget-object v1, p0, Lokhttp3/Cookie;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lokhttp3/Cookie;->f:Ljava/lang/String;

    iget-object v1, p0, Lokhttp3/Cookie;->f:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p1, Lokhttp3/Cookie;->g:J

    iget-wide v2, p0, Lokhttp3/Cookie;->g:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-object v0, p1, Lokhttp3/Cookie;->h:Ljava/lang/String;

    iget-object v1, p0, Lokhttp3/Cookie;->h:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lokhttp3/Cookie;->i:Ljava/lang/String;

    iget-object v1, p0, Lokhttp3/Cookie;->i:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lokhttp3/Cookie;->j:Z

    iget-boolean v1, p0, Lokhttp3/Cookie;->j:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p1, Lokhttp3/Cookie;->k:Z

    iget-boolean v1, p0, Lokhttp3/Cookie;->k:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p1, Lokhttp3/Cookie;->l:Z

    iget-boolean v1, p0, Lokhttp3/Cookie;->l:Z

    if-ne v0, v1, :cond_0

    iget-boolean p1, p1, Lokhttp3/Cookie;->m:Z

    iget-boolean v0, p0, Lokhttp3/Cookie;->m:Z

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final expiresAt()J
    .locals 2
    .annotation build Lkotlin/jvm/JvmName;
        name = "expiresAt"
    .end annotation

    .line 1
    iget-wide v0, p0, Lokhttp3/Cookie;->g:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 4
    .annotation build Lorg/codehaus/mojo/animal_sniffer/IgnoreJRERequirement;
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/Cookie;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 2
    iget-object v0, p0, Lokhttp3/Cookie;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 3
    iget-wide v2, p0, Lokhttp3/Cookie;->g:J

    invoke-static {v2, v3}, Lkotlinx/coroutines/k;->a(J)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 4
    iget-object v0, p0, Lokhttp3/Cookie;->h:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 5
    iget-object v0, p0, Lokhttp3/Cookie;->i:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 6
    iget-boolean v0, p0, Lokhttp3/Cookie;->j:Z

    invoke-static {v0}, Lokhttp3/a;->a(Z)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 7
    iget-boolean v0, p0, Lokhttp3/Cookie;->k:Z

    invoke-static {v0}, Lokhttp3/a;->a(Z)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 8
    iget-boolean v0, p0, Lokhttp3/Cookie;->l:Z

    invoke-static {v0}, Lokhttp3/a;->a(Z)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 9
    iget-boolean v0, p0, Lokhttp3/Cookie;->m:Z

    invoke-static {v0}, Lokhttp3/a;->a(Z)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final hostOnly()Z
    .locals 1
    .annotation build Lkotlin/jvm/JvmName;
        name = "hostOnly"
    .end annotation

    .line 1
    iget-boolean v0, p0, Lokhttp3/Cookie;->m:Z

    return v0
.end method

.method public final httpOnly()Z
    .locals 1
    .annotation build Lkotlin/jvm/JvmName;
        name = "httpOnly"
    .end annotation

    .line 1
    iget-boolean v0, p0, Lokhttp3/Cookie;->k:Z

    return v0
.end method

.method public final matches(Lokhttp3/HttpUrl;)Z
    .locals 3
    .param p1    # Lokhttp3/HttpUrl;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Lokhttp3/Cookie;->m:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/Cookie;->h:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lokhttp3/Cookie;->Companion:Lokhttp3/Cookie$Companion;

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lokhttp3/Cookie;->h:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lokhttp3/Cookie$Companion;->access$domainMatch(Lokhttp3/Cookie$Companion;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    :goto_0
    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 4
    :cond_1
    sget-object v0, Lokhttp3/Cookie;->Companion:Lokhttp3/Cookie$Companion;

    iget-object v2, p0, Lokhttp3/Cookie;->i:Ljava/lang/String;

    invoke-static {v0, p1, v2}, Lokhttp3/Cookie$Companion;->access$pathMatch(Lokhttp3/Cookie$Companion;Lokhttp3/HttpUrl;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 5
    :cond_2
    iget-boolean v0, p0, Lokhttp3/Cookie;->j:Z

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->isHttps()Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    const/4 v1, 0x1

    :cond_4
    return v1
.end method

.method public final name()Ljava/lang/String;
    .locals 1
    .annotation build Lkotlin/jvm/JvmName;
        name = "name"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/Cookie;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final path()Ljava/lang/String;
    .locals 1
    .annotation build Lkotlin/jvm/JvmName;
        name = "path"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/Cookie;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final persistent()Z
    .locals 1
    .annotation build Lkotlin/jvm/JvmName;
        name = "persistent"
    .end annotation

    .line 1
    iget-boolean v0, p0, Lokhttp3/Cookie;->l:Z

    return v0
.end method

.method public final secure()Z
    .locals 1
    .annotation build Lkotlin/jvm/JvmName;
        name = "secure"
    .end annotation

    .line 1
    iget-boolean v0, p0, Lokhttp3/Cookie;->j:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lokhttp3/Cookie;->toString$okhttp(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toString$okhttp(Z)Ljava/lang/String;
    .locals 6
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    iget-object v1, p0, Lokhttp3/Cookie;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3d

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4
    iget-object v1, p0, Lokhttp3/Cookie;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    iget-boolean v1, p0, Lokhttp3/Cookie;->l:Z

    if-eqz v1, :cond_1

    .line 6
    iget-wide v1, p0, Lokhttp3/Cookie;->g:J

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    const-string v1, "; max-age=0"

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v1, "; expires="

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/util/Date;

    iget-wide v2, p0, Lokhttp3/Cookie;->g:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-static {v1}, Lokhttp3/internal/http/DatesKt;->toHttpDateString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    :cond_1
    :goto_0
    iget-boolean v1, p0, Lokhttp3/Cookie;->m:Z

    if-nez v1, :cond_3

    const-string v1, "; domain="

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_2

    const-string p1, "."

    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    :cond_2
    iget-object p1, p0, Lokhttp3/Cookie;->h:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const-string p1, "; path="

    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lokhttp3/Cookie;->i:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    iget-boolean p1, p0, Lokhttp3/Cookie;->j:Z

    if-eqz p1, :cond_4

    const-string p1, "; secure"

    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    :cond_4
    iget-boolean p1, p0, Lokhttp3/Cookie;->k:Z

    if-eqz p1, :cond_5

    const-string p1, "; httponly"

    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "toString()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final value()Ljava/lang/String;
    .locals 1
    .annotation build Lkotlin/jvm/JvmName;
        name = "value"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/Cookie;->f:Ljava/lang/String;

    return-object v0
.end method