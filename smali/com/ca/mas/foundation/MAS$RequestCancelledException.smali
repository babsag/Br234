.class public Lcom/ca/mas/foundation/MAS$RequestCancelledException;
.super Ljava/lang/Exception;
.source "MAS.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ca/mas/foundation/MAS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RequestCancelledException"
.end annotation


# instance fields
.field private final a:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ca/mas/foundation/MAS$RequestCancelledException;->a:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public getData()Landroid/os/Bundle;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/foundation/MAS$RequestCancelledException;->a:Landroid/os/Bundle;

    return-object v0
.end method
