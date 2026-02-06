import type { SiteConfig } from "@indirecttek/essentials-engine";

export const siteConfig: SiteConfig = {
  businessName: "Summit Edge Advisory",
  theme: {
    primary: "#1F2937",
    secondary: "#3B82F6",
    accent: "#F59E0B",
    background: "#F9FAFB",
    foreground: "#111827",
  },
  contactInfo: {
    phone: "(919) 555-0174",
    email: "hello@summitedgeadvisory.com",
    address: "400 Main Street, Raleigh, NC 27601",
  },
  heroSection: {
    headline: "Strategic Guidance for Confident Decisions",
    subheadline: "Professional advisory services to help you make smart moves in your business and finances.",
    imageUrl: "https://images.unsplash.com/photo-1600880292203-757bb62b4baf?ixlib=rb-4.0.3&auto=format&fit=crop&w=1200&q=80",
    imageAlt: "Professional advisor meeting with clients",
    callToActionLabel: "Schedule a Consultation",
  },
  services: [
    {
      title: "Strategic Planning & Advisory",
      description: "Navigate complex business decisions with clarity. We help you develop actionable strategies that drive sustainable growth and minimize risk.",
      icon: "📊",
    },
    {
      title: "Financial & Tax Guidance",
      description: "Make informed financial decisions with confidence. Our expertise ensures you optimize your tax position while staying fully compliant.",
      icon: "💼",
    },
    {
      title: "Real Estate & Investment Consultation",
      description: "Maximize returns on your property and investment decisions. We provide data-driven insights to help you build long-term wealth.",
      icon: "🏢",
    },
    {
      title: "Small Business Coaching",
      description: "Scale your business with expert mentorship. From operations to hiring, we guide you through every growth phase with proven frameworks.",
      icon: "🚀",
    },
    {
      title: "Audit & Compliance Reviews",
      description: "Stay ahead of regulatory requirements with thorough compliance assessments. We identify gaps and implement solutions before they become problems.",
      icon: "✅",
    },
  ],
  analytics: {
    enableTracking: false,
    mixpanelToken: null,
  },
  seo: {
    title: "Summit Edge Advisory | Professional Services in Raleigh, NC",
    description: "Expert advisory services for business owners and professionals in the Raleigh area. We provide strategic guidance, financial planning, and consulting to help you make confident, informed decisions.",
  },
  imageSearchHints: {
    hero: "business meeting in modern office",
    services: [
      "professional advisor with clients",
      "team collaborating in office",
      "business handshake agreement",
      "person reviewing financial charts",
    ],
  },

  // Integrations - Scheduling, Payments, Email
  integrations: {
    scheduling: {
      provider: "calendly",
      url: "https://calendly.com/summitedge-demo/consultation",
      buttonText: "Schedule Consultation",
    },
    payments: {
      provider: "stripe",
      mode: "deposit",
      depositAmount: 20000, // $200.00 retainer
      buttonText: "Pay $200 Retainer",
    },
    email: {
      provider: "resend",
    },
  },
};
