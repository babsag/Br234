.class public Lbr/com/topaz/l/w;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lbr/com/topaz/l/w;
    .locals 0

    iput-object p1, p0, Lbr/com/topaz/l/w;->a:Ljava/lang/String;

    return-object p0
.end method

.method public a(Z)Lbr/com/topaz/l/w;
    .locals 0

    iput-boolean p1, p0, Lbr/com/topaz/l/w;->c:Z

    return-object p0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/l/w;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lbr/com/topaz/l/w;
    .locals 0

    iput-object p1, p0, Lbr/com/topaz/l/w;->b:Ljava/lang/String;

    return-object p0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/l/w;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lbr/com/topaz/l/w;->c:Z

    return v0
.end method
