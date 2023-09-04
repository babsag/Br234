.class public Lnet/minidev/json/JSONStyle;
.super Ljava/lang/Object;
.source "JSONStyle.java"


# static fields
.field public static final FLAG_AGRESSIVE:I = 0x8

.field public static final FLAG_IGNORE_NULL:I = 0x10

.field public static final FLAG_PROTECT_4WEB:I = 0x2

.field public static final FLAG_PROTECT_KEYS:I = 0x1

.field public static final FLAG_PROTECT_VALUES:I = 0x4

.field public static final LT_COMPRESS:Lnet/minidev/json/JSONStyle;

.field public static final MAX_COMPRESS:Lnet/minidev/json/JSONStyle;

.field public static final NO_COMPRESS:Lnet/minidev/json/JSONStyle;


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Lnet/minidev/json/JStylerObj$MustProtect;

.field private f:Lnet/minidev/json/JStylerObj$MustProtect;

.field private g:Lnet/minidev/json/JStylerObj$StringProtector;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lnet/minidev/json/JSONStyle;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnet/minidev/json/JSONStyle;-><init>(I)V

    sput-object v0, Lnet/minidev/json/JSONStyle;->NO_COMPRESS:Lnet/minidev/json/JSONStyle;

    .line 2
    new-instance v0, Lnet/minidev/json/JSONStyle;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lnet/minidev/json/JSONStyle;-><init>(I)V

    sput-object v0, Lnet/minidev/json/JSONStyle;->MAX_COMPRESS:Lnet/minidev/json/JSONStyle;

    .line 3
    new-instance v0, Lnet/minidev/json/JSONStyle;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lnet/minidev/json/JSONStyle;-><init>(I)V

    sput-object v0, Lnet/minidev/json/JSONStyle;->LT_COMPRESS:Lnet/minidev/json/JSONStyle;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 14
    invoke-direct {p0, v0}, Lnet/minidev/json/JSONStyle;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iput-boolean v0, p0, Lnet/minidev/json/JSONStyle;->a:Z

    and-int/lit8 v3, p1, 0x4

    if-nez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 3
    :goto_1
    iput-boolean v3, p0, Lnet/minidev/json/JSONStyle;->c:Z

    and-int/lit8 v4, p1, 0x2

    if-nez v4, :cond_2

    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    .line 4
    :goto_2
    iput-boolean v4, p0, Lnet/minidev/json/JSONStyle;->b:Z

    and-int/lit8 v5, p1, 0x10

    if-lez v5, :cond_3

    const/4 v1, 0x1

    .line 5
    :cond_3
    iput-boolean v1, p0, Lnet/minidev/json/JSONStyle;->d:Z

    and-int/lit8 p1, p1, 0x8

    if-lez p1, :cond_4

    .line 6
    sget-object p1, Lnet/minidev/json/JStylerObj;->c:Lnet/minidev/json/JStylerObj$d;

    goto :goto_3

    .line 7
    :cond_4
    sget-object p1, Lnet/minidev/json/JStylerObj;->a:Lnet/minidev/json/JStylerObj$e;

    :goto_3
    if-eqz v3, :cond_5

    .line 8
    sget-object v1, Lnet/minidev/json/JStylerObj;->b:Lnet/minidev/json/JStylerObj$f;

    iput-object v1, p0, Lnet/minidev/json/JSONStyle;->f:Lnet/minidev/json/JStylerObj$MustProtect;

    goto :goto_4

    .line 9
    :cond_5
    iput-object p1, p0, Lnet/minidev/json/JSONStyle;->f:Lnet/minidev/json/JStylerObj$MustProtect;

    :goto_4
    if-eqz v0, :cond_6

    .line 10
    sget-object p1, Lnet/minidev/json/JStylerObj;->b:Lnet/minidev/json/JStylerObj$f;

    iput-object p1, p0, Lnet/minidev/json/JSONStyle;->e:Lnet/minidev/json/JStylerObj$MustProtect;

    goto :goto_5

    .line 11
    :cond_6
    iput-object p1, p0, Lnet/minidev/json/JSONStyle;->e:Lnet/minidev/json/JStylerObj$MustProtect;

    :goto_5
    if-eqz v4, :cond_7

    .line 12
    sget-object p1, Lnet/minidev/json/JStylerObj;->e:Lnet/minidev/json/JStylerObj$b;

    iput-object p1, p0, Lnet/minidev/json/JSONStyle;->g:Lnet/minidev/json/JStylerObj$StringProtector;

    goto :goto_6

    .line 13
    :cond_7
    sget-object p1, Lnet/minidev/json/JStylerObj;->d:Lnet/minidev/json/JStylerObj$c;

    iput-object p1, p0, Lnet/minidev/json/JSONStyle;->g:Lnet/minidev/json/JStylerObj$StringProtector;

    :goto_6
    return-void
.end method


# virtual methods
.method public arrayNextElm(Ljava/lang/Appendable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x2c

    .line 1
    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    return-void
.end method

.method public arrayObjectEnd(Ljava/lang/Appendable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public arrayStart(Ljava/lang/Appendable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x5b

    .line 1
    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    return-void
.end method

.method public arrayStop(Ljava/lang/Appendable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x5d

    .line 1
    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    return-void
.end method

.method public arrayfirstObject(Ljava/lang/Appendable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public escape(Ljava/lang/String;Ljava/lang/Appendable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/minidev/json/JSONStyle;->g:Lnet/minidev/json/JStylerObj$StringProtector;

    invoke-interface {v0, p1, p2}, Lnet/minidev/json/JStylerObj$StringProtector;->escape(Ljava/lang/String;Ljava/lang/Appendable;)V

    return-void
.end method

.method public ignoreNull()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lnet/minidev/json/JSONStyle;->d:Z

    return v0
.end method

.method public indent()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public mustProtectKey(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/minidev/json/JSONStyle;->e:Lnet/minidev/json/JStylerObj$MustProtect;

    invoke-interface {v0, p1}, Lnet/minidev/json/JStylerObj$MustProtect;->mustBeProtect(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public mustProtectValue(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/minidev/json/JSONStyle;->f:Lnet/minidev/json/JStylerObj$MustProtect;

    invoke-interface {v0, p1}, Lnet/minidev/json/JStylerObj$MustProtect;->mustBeProtect(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public objectElmStop(Ljava/lang/Appendable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public objectEndOfKey(Ljava/lang/Appendable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x3a

    .line 1
    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    return-void
.end method

.method public objectFirstStart(Ljava/lang/Appendable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public objectNext(Ljava/lang/Appendable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x2c

    .line 1
    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    return-void
.end method

.method public objectStart(Ljava/lang/Appendable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x7b

    .line 1
    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    return-void
.end method

.method public objectStop(Ljava/lang/Appendable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x7d

    .line 1
    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    return-void
.end method

.method public protect4Web()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lnet/minidev/json/JSONStyle;->b:Z

    return v0
.end method

.method public protectKeys()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lnet/minidev/json/JSONStyle;->a:Z

    return v0
.end method

.method public protectValues()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lnet/minidev/json/JSONStyle;->c:Z

    return v0
.end method

.method public writeString(Ljava/lang/Appendable;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p2}, Lnet/minidev/json/JSONStyle;->mustProtectValue(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_0

    :cond_0
    const/16 v0, 0x22

    .line 3
    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 4
    invoke-static {p2, p1, p0}, Lnet/minidev/json/JSONValue;->escape(Ljava/lang/String;Ljava/lang/Appendable;Lnet/minidev/json/JSONStyle;)V

    .line 5
    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    :goto_0
    return-void
.end method
