.class Lcom/ca/mas/core/storage/sharedstorage/MASSharedStorage$a;
.super Ljava/lang/Object;
.source "MASSharedStorage.java"

# interfaces
.implements Lcom/ca/mas/core/security/EncryptionProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ca/mas/core/storage/sharedstorage/MASSharedStorage;->getEncryptionProvider()Lcom/ca/mas/core/security/EncryptionProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ca/mas/core/storage/sharedstorage/MASSharedStorage;


# direct methods
.method constructor <init>(Lcom/ca/mas/core/storage/sharedstorage/MASSharedStorage;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ca/mas/core/storage/sharedstorage/MASSharedStorage$a;->a:Lcom/ca/mas/core/storage/sharedstorage/MASSharedStorage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public decrypt([B)[B
    .locals 0

    return-object p1
.end method

.method public encrypt([B)[B
    .locals 0

    return-object p1
.end method
