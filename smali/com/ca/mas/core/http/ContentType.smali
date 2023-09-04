.class public Lcom/ca/mas/core/http/ContentType;
.super Ljava/lang/Object;
.source "ContentType.java"


# static fields
.field public static final APPLICATION_FORM_URLENCODED:Lcom/ca/mas/core/http/ContentType;

.field public static final APPLICATION_JSON:Lcom/ca/mas/core/http/ContentType;

.field public static final APPLICATION_OCTET_STREAM:Lcom/ca/mas/core/http/ContentType;

.field public static MULTIPART_FORM_DATA:Lcom/ca/mas/core/http/ContentType;

.field public static final TEXT_PLAIN:Lcom/ca/mas/core/http/ContentType;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/ca/mas/core/http/ContentType;

    const-string v1, "application/octet-stream"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ca/mas/core/http/ContentType;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    sput-object v0, Lcom/ca/mas/core/http/ContentType;->APPLICATION_OCTET_STREAM:Lcom/ca/mas/core/http/ContentType;

    .line 2
    new-instance v0, Lcom/ca/mas/core/http/ContentType;

    sget-object v1, Lcom/ca/mas/core/io/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    const-string v2, "application/x-www-form-urlencoded"

    invoke-direct {v0, v2, v1}, Lcom/ca/mas/core/http/ContentType;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    sput-object v0, Lcom/ca/mas/core/http/ContentType;->APPLICATION_FORM_URLENCODED:Lcom/ca/mas/core/http/ContentType;

    .line 3
    new-instance v0, Lcom/ca/mas/core/http/ContentType;

    sget-object v2, Lcom/ca/mas/core/io/Charsets;->UTF8:Ljava/nio/charset/Charset;

    const-string v3, "application/json"

    invoke-direct {v0, v3, v2}, Lcom/ca/mas/core/http/ContentType;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    sput-object v0, Lcom/ca/mas/core/http/ContentType;->APPLICATION_JSON:Lcom/ca/mas/core/http/ContentType;

    .line 4
    new-instance v0, Lcom/ca/mas/core/http/ContentType;

    const-string v2, "text/plain"

    invoke-direct {v0, v2, v1}, Lcom/ca/mas/core/http/ContentType;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    sput-object v0, Lcom/ca/mas/core/http/ContentType;->TEXT_PLAIN:Lcom/ca/mas/core/http/ContentType;

    .line 5
    new-instance v0, Lcom/ca/mas/core/http/ContentType;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "multipart/form-data;boundary="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/ca/mas/foundation/MASConstants;->MAS_BOUNDARY:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/ca/mas/core/http/ContentType;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    sput-object v0, Lcom/ca/mas/core/http/ContentType;->MULTIPART_FORM_DATA:Lcom/ca/mas/core/http/ContentType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ca/mas/core/http/ContentType;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/ca/mas/core/http/ContentType;->b:Ljava/nio/charset/Charset;

    return-void
.end method


# virtual methods
.method public getCharset()Ljava/nio/charset/Charset;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/http/ContentType;->b:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/http/ContentType;->a:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/ca/mas/core/http/ContentType;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    iget-object v1, p0, Lcom/ca/mas/core/http/ContentType;->b:Ljava/nio/charset/Charset;

    if-eqz v1, :cond_0

    const-string v1, "; charset="

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    iget-object v1, p0, Lcom/ca/mas/core/http/ContentType;->b:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
