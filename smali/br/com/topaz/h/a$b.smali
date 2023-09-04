.class public Lbr/com/topaz/h/a$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbr/com/topaz/h/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:I

.field private d:I

.field final synthetic e:Lbr/com/topaz/h/a;


# direct methods
.method constructor <init>(Lbr/com/topaz/h/a;ILjava/lang/String;II)V
    .locals 0

    iput-object p1, p0, Lbr/com/topaz/h/a$b;->e:Lbr/com/topaz/h/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lbr/com/topaz/h/a$b;->a:I

    iput-object p3, p0, Lbr/com/topaz/h/a$b;->b:Ljava/lang/String;

    iput p4, p0, Lbr/com/topaz/h/a$b;->c:I

    iput p5, p0, Lbr/com/topaz/h/a$b;->d:I

    return-void
.end method

.method static synthetic a(Lbr/com/topaz/h/a$b;)I
    .locals 0

    iget p0, p0, Lbr/com/topaz/h/a$b;->d:I

    return p0
.end method

.method static synthetic b(Lbr/com/topaz/h/a$b;)I
    .locals 0

    iget p0, p0, Lbr/com/topaz/h/a$b;->a:I

    return p0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/h/a$b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lbr/com/topaz/h/a$b;->d:I

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lbr/com/topaz/h/a$b;->c:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    check-cast p1, Lbr/com/topaz/h/a$b;

    iget v0, p0, Lbr/com/topaz/h/a$b;->a:I

    iget v1, p1, Lbr/com/topaz/h/a$b;->a:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lbr/com/topaz/h/a$b;->b:Ljava/lang/String;

    iget-object v1, p1, Lbr/com/topaz/h/a$b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lbr/com/topaz/h/a$b;->c:I

    iget v1, p1, Lbr/com/topaz/h/a$b;->c:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lbr/com/topaz/h/a$b;->d:I

    iget p1, p1, Lbr/com/topaz/h/a$b;->d:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
