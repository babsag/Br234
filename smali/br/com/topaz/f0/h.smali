.class public Lbr/com/topaz/f0/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:[B

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lbr/com/topaz/f0/h;->a:I

    new-array v0, v0, [B

    iput-object v0, p0, Lbr/com/topaz/f0/h;->b:[B

    const-string v0, ""

    iput-object v0, p0, Lbr/com/topaz/f0/h;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/f0/h;->c:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lbr/com/topaz/f0/h;->a:I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lbr/com/topaz/f0/h;->c:Ljava/lang/String;

    return-void
.end method

.method public a([B)V
    .locals 0

    iput-object p1, p0, Lbr/com/topaz/f0/h;->b:[B

    return-void
.end method

.method public b()[B
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/f0/h;->b:[B

    return-object v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lbr/com/topaz/f0/h;->a:I

    return v0
.end method
