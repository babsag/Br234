.class public Lbr/com/topaz/m/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbr/com/topaz/m/d;


# instance fields
.field private a:Lbr/com/topaz/b/a;


# direct methods
.method public constructor <init>(Lbr/com/topaz/b/a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lbr/com/topaz/m/c;->a:Lbr/com/topaz/b/a;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "\'build\' parameter can`t be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/m/c;->a:Lbr/com/topaz/b/a;

    invoke-interface {v0}, Lbr/com/topaz/b/a;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
