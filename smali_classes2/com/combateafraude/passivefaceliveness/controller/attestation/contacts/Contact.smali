.class public Lcom/combateafraude/passivefaceliveness/controller/attestation/contacts/Contact;
.super Ljava/lang/Object;
.source "Contact.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "name"
    .end annotation
.end field

.field private final phoneNumbers:[Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "phoneNumbers"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/combateafraude/passivefaceliveness/controller/attestation/contacts/Contact;->name:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/combateafraude/passivefaceliveness/controller/attestation/contacts/Contact;->phoneNumbers:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getPhoneNumbers()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/combateafraude/passivefaceliveness/controller/attestation/contacts/Contact;->phoneNumbers:[Ljava/lang/String;

    return-object v0
.end method
